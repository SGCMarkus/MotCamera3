.class public final Lcom/google/android/play/core/assetpacks/zzci;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final zza:Lkotlin/jvm/internal/SpreadBuilder;

.field public final zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/play/core/internal/zzz;",
            ">;"
        }
    .end annotation
.end field

.field public final zzc:Landroid/content/Context;

.field public zzd:Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;

.field public zze:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const-string v1, "ExtractionForegroundServiceConnection"

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/zzci;->zza:Lkotlin/jvm/internal/SpreadBuilder;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/zzci;->zzb:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzci;->zzc:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/zzci;->zza:Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Starting foreground installation service."

    invoke-virtual {p1, v1, v0}, Lkotlin/jvm/internal/SpreadBuilder;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    check-cast p2, Lcom/google/android/play/core/assetpacks/zzch;

    iget-object p1, p2, Lcom/google/android/play/core/assetpacks/zzch;->zza:Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzci;->zzd:Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/zzci;->zze:Landroid/app/Notification;

    const v0, -0x70492694

    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzci;->zzd()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public final zzd()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzci;->zzb:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzci;->zzb:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzci;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/google/android/play/core/internal/zzz;

    :try_start_1
    new-instance v5, Landroid/os/Bundle;

    .line 5
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {v4}, Lcom/google/android/play/core/internal/zzk;->zza()Landroid/os/Parcel;

    move-result-object v7

    .line 7
    sget v8, Lcom/google/android/play/core/internal/zzm;->$r8$clinit:I

    const/4 v8, 0x1

    .line 8
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {v5, v7, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 10
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v5, 0x2

    .line 12
    invoke-virtual {v4, v5, v7}, Lcom/google/android/play/core/internal/zzk;->zzb(ILandroid/os/Parcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/zzci;->zza:Lkotlin/jvm/internal/SpreadBuilder;

    const-string v5, "Could not resolve Play Store service state update callback."

    new-array v6, v2, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v4, v5, v6}, Lkotlin/jvm/internal/SpreadBuilder;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 15
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
