.class public Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "PostCaptureReview.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

.field public final synthetic val$portrait:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->val$portrait:Z

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    .line 4
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->val$portrait:Z

    if-eqz v0, :cond_0

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_0

    .line 5
    :cond_0
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    .line 7
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setVisibility(ZZ)V

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    .line 4
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 5
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v1, 0x4

    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 9
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method