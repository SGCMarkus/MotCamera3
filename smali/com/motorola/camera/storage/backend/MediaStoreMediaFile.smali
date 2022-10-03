.class public final Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;
.super Ljava/lang/Object;
.source "MediaStoreMediaFile.kt"

# interfaces
.implements Lcom/motorola/camera/storage/SharedMediaFile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/storage/backend/MediaStoreMediaFile$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaStoreMediaFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaStoreMediaFile.kt\ncom/motorola/camera/storage/backend/MediaStoreMediaFile\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,280:1\n1#2:281\n13536#3,2:282\n13536#3,2:284\n*S KotlinDebug\n*F\n+ 1 MediaStoreMediaFile.kt\ncom/motorola/camera/storage/backend/MediaStoreMediaFile\n*L\n73#1:282,2\n147#1:284,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile$Companion;


# instance fields
.field public isFinished:Z

.field public mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

.field public mediaItemUri:Landroid/net/Uri;

.field public writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->Companion:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/storage/MediaFilePath;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    return-void
.end method


# virtual methods
.method public asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;
    .locals 1

    const-string/jumbo v0, "this"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public asTemporaryFileMediaFile()Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;
    .locals 1

    const-string/jumbo v0, "this"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/motorola/camera/storage/backend/TemporaryFileMediaFile;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public closeWriteFileDescriptor()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->closeWriteParcelFileDescriptor()V

    return-void
.end method

.method public final closeWriteParcelFileDescriptor()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    throw v1
.end method

.method public delete()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->closeWriteParcelFileDescriptor()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    :try_start_1
    invoke-static {v1}, Lcom/motorola/camera/storage/MediaStoreClient;->deleteMediaItem(Landroid/net/Uri;)I

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete (got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v3

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v3, 0x0

    .line 8
    iput-object v3, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    .line 9
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    if-eqz p0, :cond_3

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    :goto_2
    add-int/lit8 v3, v2, 0x1

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "exceptions[i]"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-ge v3, v1, :cond_2

    move v2, v3

    goto :goto_2

    .line 14
    :cond_2
    throw p0

    :cond_3
    return-void
.end method

.method public final ensureMediaItemIsCreatedAndOpened()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    if-nez v0, :cond_8

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileName"

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/storage/MediaType;->values()[Lcom/motorola/camera/storage/MediaType;

    move-result-object v1

    .line 5
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v2, :cond_2

    aget-object v6, v1, v3

    .line 6
    iget-object v7, v6, Lcom/motorola/camera/storage/MediaType;->extension:Ljava/lang/String;

    .line 7
    invoke-static {v0, v7, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v4

    :goto_1
    if-eqz v6, :cond_7

    .line 8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    sget-object v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->Companion:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile$Companion;

    invoke-static {v1, v0, v5}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile$Companion;->access$putPending(Lcom/motorola/camera/storage/backend/MediaStoreMediaFile$Companion;Landroid/content/ContentValues;Z)V

    .line 10
    iget-object v1, v6, Lcom/motorola/camera/storage/MediaType;->mimeType:Ljava/lang/String;

    const-string v2, "mime_type"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaFilePath;->getRelativePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v7, "datetaken"

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_modified"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaFilePath;->getMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "volumeName"

    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "getContentUri(volumeName)"

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_5

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    goto :goto_2

    .line 20
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 21
    :cond_5
    :goto_2
    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :goto_3
    sget-object v2, Lcom/motorola/camera/storage/MediaStoreClient;->INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient;

    const-string/jumbo v2, "uri"

    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "values"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v2, Lcom/motorola/camera/storage/MediaStoreClient;->INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/storage/MediaStoreClient;->requireMediaStoreUri(Landroid/net/Uri;)V

    .line 25
    new-instance v2, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;

    invoke-direct {v2, v1, v0}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 26
    iput-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    .line 27
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_4

    .line 28
    :cond_6
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "Failed to insert to: "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string p0, "failed to get media type: "

    .line 29
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    const-string v1, "rw"

    .line 30
    invoke-static {v0, v1}, Lcom/motorola/camera/storage/MediaStoreClient;->openMediaItem(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_9

    iput-object v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void

    .line 31
    :cond_9
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to open: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finish()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->closeWriteParcelFileDescriptor()V

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileName"

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/storage/MediaType;->values()[Lcom/motorola/camera/storage/MediaType;

    move-result-object v1

    .line 5
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v2, :cond_1

    aget-object v7, v1, v4

    .line 6
    iget-object v8, v7, Lcom/motorola/camera/storage/MediaType;->extension:Ljava/lang/String;

    .line 7
    invoke-static {v0, v8, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v5

    :goto_1
    if-eqz v7, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v0

    .line 9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 10
    sget-object v2, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->Companion:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile$Companion;

    invoke-static {v2, v1, v3}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile$Companion;->access$putPending(Lcom/motorola/camera/storage/backend/MediaStoreMediaFile$Companion;Landroid/content/ContentValues;Z)V

    .line 11
    iget-object v2, v7, Lcom/motorola/camera/storage/MediaType;->mimeType:Ljava/lang/String;

    const-string v4, "mime_type"

    .line 12
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v2}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "_display_name"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {v0, v1}, Lcom/motorola/camera/storage/MediaStoreClient;->updateMediaItem(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 16
    invoke-virtual {v7, v0}, Lcom/motorola/camera/storage/MediaType;->getNewMediaIntents(Landroid/net/Uri;)[Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 17
    array-length v2, v0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 18
    invoke-virtual {v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 19
    :cond_2
    iput-boolean v6, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    goto :goto_3

    .line 20
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update (got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "failed to get media type: "

    .line 21
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "getInstance()"

    .line 2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "mediaItemUri is null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMediaFilePath()Lcom/motorola/camera/storage/MediaFilePath;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    return-object p0
.end method

.method public getMediaStoreUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "mediaItemUri is null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProcessingMediaUri()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->ensureMediaItemIsCreatedAndOpened()V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWriteFd()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->ensureMediaItemIsCreatedAndOpened()V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    return p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "writeParcelFileDescriptor is null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWriteFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->ensureMediaItemIsCreatedAndOpened()V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const-string v0, "getWriteParcelFileDescriptor().fileDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "writeParcelFileDescriptor is null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isFinished()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    return p0
.end method

.method public isInMediaStore()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object p0

    const-string v0, "r"

    .line 3
    invoke-static {p0, v0}, Lcom/motorola/camera/storage/MediaStoreClient;->openMediaItem(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to open: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isFinished is false"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rename(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "newName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileName"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/storage/MediaType;->values()[Lcom/motorola/camera/storage/MediaType;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v2, :cond_1

    aget-object v7, v1, v4

    .line 5
    iget-object v8, v7, Lcom/motorola/camera/storage/MediaType;->extension:Ljava/lang/String;

    .line 6
    invoke-static {v0, v8, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v5

    :goto_1
    if-eqz v7, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    .line 9
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v0, v1}, Lcom/motorola/camera/storage/MediaStoreClient;->updateMediaItem(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 11
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 13
    invoke-virtual {v7, v0}, Lcom/motorola/camera/storage/MediaType;->getNewMediaIntents(Landroid/net/Uri;)[Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 14
    array-length v0, p1

    :goto_2
    if-ge v3, v0, :cond_2

    aget-object v1, p1, v3

    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void

    .line 16
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update (got "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "failed to get media type: "

    .line 17
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "isFinished is false"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    return-void
.end method

.method public toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;
    .locals 4

    .line 1
    new-instance v0, Lcom/motorola/camera/storage/MediaFile$Memento;

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    iget-boolean v2, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    .line 6
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/motorola/camera/storage/MediaFile$Memento;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Uri;Lcom/motorola/camera/storage/MediaFilePath;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "MediaStoreMediaFile(mediaFilePath="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaItemUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-boolean v1, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", writeParcelFileDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->writeParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
