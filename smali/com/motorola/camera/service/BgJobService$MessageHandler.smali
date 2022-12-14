.class public final Lcom/motorola/camera/service/BgJobService$MessageHandler;
.super Landroid/os/Handler;
.source "BgJobService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/service/BgJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageHandler"
.end annotation


# instance fields
.field public final bgJobService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/service/BgJobService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/motorola/camera/service/BgJobService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/service/BgJobService$MessageHandler;->bgJobService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getBgInstance()Lcom/motorola/camera/service/BgJobService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/service/BgJobService$MessageHandler;->bgJobService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/service/BgJobService;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v0, 0x4

    if-eq v3, v0, :cond_6

    .line 2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/service/BgJobService$MessageHandler;->getBgInstance()Lcom/motorola/camera/service/BgJobService;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "msg.data"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/motorola/camera/service/BgJobService;->$r8$clinit:I

    .line 4
    invoke-virtual {v3, v4}, Lcom/motorola/camera/service/BgJobService;->getTaskID(Landroid/os/Bundle;)Lcom/motorola/camera/background/common/TaskId;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/service/BgJobService$MessageHandler;->getBgInstance()Lcom/motorola/camera/service/BgJobService;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    .line 6
    :cond_3
    iget-object v5, v4, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/Map;

    .line 7
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string v7, "msg.replyTo"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v4, p1, v3}, Lcom/motorola/camera/service/BgJobService;->acknowledgeJob(Landroid/os/Message;Lcom/motorola/camera/background/common/TaskId;)V

    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "action"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 11
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 12
    sget-object v5, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 13
    iget-object v5, v5, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    .line 14
    new-instance v6, Lcom/motorola/camera/service/BgJobService$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, v4, v3}, Lcom/motorola/camera/service/BgJobService$$ExternalSyntheticLambda0;-><init>(ILcom/motorola/camera/service/BgJobService;Landroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    sget v3, Lcom/motorola/camera/service/BgJobService;->$r8$clinit:I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Exception while handling : "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BgJobService"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    invoke-virtual {p0}, Lcom/motorola/camera/service/BgJobService$MessageHandler;->getBgInstance()Lcom/motorola/camera/service/BgJobService;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    .line 18
    new-instance v3, Lcom/google/android/play/core/assetpacks/zzbi;

    invoke-direct {v3}, Lcom/google/android/play/core/assetpacks/zzbi;-><init>()V

    const-string v4, "DATE_TYPE"

    .line 19
    invoke-virtual {v3, v4, v1}, Lcom/google/android/play/core/assetpacks/zzbi;->putInt(Ljava/lang/String;I)V

    const-string v1, "FILE_NAME"

    .line 20
    invoke-virtual {v3, v1, v2}, Lcom/google/android/play/core/assetpacks/zzbi;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "URI"

    .line 21
    invoke-virtual {v3, v1, v2}, Lcom/google/android/play/core/assetpacks/zzbi;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    invoke-virtual {v3, p1}, Lcom/google/android/play/core/assetpacks/zzbi;->putAll(Landroid/os/Bundle;)V

    const-string p1, "ERROR_CASE"

    .line 23
    invoke-virtual {v3, p1, v0}, Lcom/google/android/play/core/assetpacks/zzbi;->putInt(Ljava/lang/String;I)V

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/service/BgJobService;->responseMap:Ljava/util/Map;

    const-string/jumbo v0, "task_id"

    .line 25
    invoke-virtual {v3, v0}, Lcom/google/android/play/core/assetpacks/zzbi;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/common/TaskId;

    .line 26
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Messenger;

    if-nez p1, :cond_5

    goto :goto_1

    .line 27
    :cond_5
    invoke-virtual {v3, v0}, Lcom/google/android/play/core/assetpacks/zzbi;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/TaskId;

    const-string v1, "data.taskID"

    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/service/BgJobService;->getResponseMessage(ILcom/motorola/camera/background/common/TaskId;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_6
    :goto_1
    return-void
.end method
