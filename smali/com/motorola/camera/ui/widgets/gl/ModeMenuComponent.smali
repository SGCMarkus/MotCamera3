.class public Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;
.super Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;
.source "ModeMenuComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;
    }
.end annotation


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

.field public mDragScroll:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;

.field public mFlash:I

.field public mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

.field public mTorch:I

.field public mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final updateMenu:Lcom/motorola/camera/Notifier$Listener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTorch:I

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mFlash:I

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 5
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;

    .line 6
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$5;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->updateMenu:Lcom/motorola/camera/Notifier$Listener;

    .line 7
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    return-void
.end method

.method public static shouldShowTutorial()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_USE_WIDGET_MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final animateHide(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 2
    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v7, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 3
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v2, 0x0

    invoke-direct {v8, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 4
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-ne v1, v3, :cond_2

    .line 6
    invoke-virtual {v7, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    const/high16 v1, -0x3df00000    # -36.0f

    .line 7
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mDensity:F

    mul-float/2addr v3, v1

    invoke-virtual {v8, v2, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iput v2, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    const/high16 v1, 0x42800000    # 64.0f

    .line 9
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mDensity:F

    mul-float/2addr v3, v1

    invoke-virtual {v8, v3, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 10
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 11
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 12
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setAlpha(F)V

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 14
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 15
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDragMsg:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 16
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$2;

    invoke-direct {v4, v0, v8}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const-wide/16 v5, 0xa0

    const/4 v15, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x2

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;II)V

    .line 17
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 18
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 19
    iput-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 20
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 21
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v10, 0x0

    const-wide/16 v11, 0xa0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 22
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 23
    iput-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 24
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    aput-object v5, v3, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    aput-object v2, v3, v4

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 25
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final animateShow(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UP:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-ne v1, v3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v3, 0x0

    .line 3
    invoke-direct {v8, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 4
    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v9, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 5
    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-eq v1, v4, :cond_2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_3

    const/high16 v4, -0x3df00000    # -36.0f

    .line 6
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mDensity:F

    mul-float/2addr v5, v4

    invoke-virtual {v8, v3, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 7
    invoke-virtual {v9, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 8
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setAlpha(F)V

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v4, 0x42800000    # 64.0f

    .line 9
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mDensity:F

    mul-float/2addr v5, v4

    invoke-virtual {v8, v5, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    .line 10
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setAlpha(F)V

    .line 11
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    const/4 v4, 0x4

    .line 12
    invoke-virtual {v3, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 13
    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 14
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 15
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 16
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSelected(Z)V

    .line 17
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;

    invoke-direct {v5, v0, v9}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const-wide/16 v6, 0xa0

    const/16 v19, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x2

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;II)V

    .line 18
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 19
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 20
    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 21
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    const/4 v3, 0x2

    if-ne v1, v2, :cond_4

    .line 22
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v14, 0x0

    const-wide/16 v15, 0xa0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 23
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 24
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 25
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 26
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    .line 27
    :cond_4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v14, 0x0

    const-wide/16 v15, 0xa0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v19, 0x2

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 28
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 29
    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    new-array v2, v3, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 30
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    aput-object v3, v2, v12

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    aput-object v3, v2, v5

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 31
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public dirty()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    return-void
.end method

.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public getStatesToListenFor()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCROLL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ModeMenuComponent"

    return-object p0
.end method

.method public final getTutorialY()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/ui/LayoutManager;->getModeCarouselY(Z)F

    move-result p0

    .line 2
    sget-object v2, Lcom/motorola/camera/ui/LayoutManager;->mLayout:Lcom/motorola/camera/ui/LayoutManager$LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/LayoutManager$LayoutValue;->modeControlBarSize:F

    div-float/2addr v2, v1

    add-float/2addr v2, p0

    .line 3
    sget p0, Lcom/motorola/camera/ui/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v2, p0

    add-float/2addr v2, v0

    return v2
.end method

.method public final hideTutorial()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public loadTextures()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;->getAtlasDpi()Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mCachedDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    .line 2
    instance-of v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    .line 3
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 4
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_MENU:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->updateMenu:Lcom/motorola/camera/Notifier$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    .line 5
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/PreviewSize;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 6
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    .line 7
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 8
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f1101b7

    .line 9
    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 10
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    .line 12
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 14
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setVisibility(Z)V

    .line 15
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->loadTexture()V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 17
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    .line 18
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual {v0, v2, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 20
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    .line 21
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->getTutorialY()F

    move-result v1

    invoke-virtual {v0, v3, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 22
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->mDensity:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 23
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDraw([F[F[F)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    .line 2
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 4
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 6
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->onDraw([F[F)V

    :cond_2
    return-void
.end method

.method public onDrawFbo([F[F[F)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    .line 2
    iget-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onDrawFbo([F[F)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->drawFbo([F[F)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->drawFbo([F[F)V

    return-void
.end method

.method public onPreDraw([F[F[F)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;->onPreDraw([F[F[F)Z

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onPreDraw([F[F)V

    .line 5
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 6
    iget-object v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->onPreDraw([F[F)V

    .line 7
    iget-object v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->onPreDraw([F[F)V

    .line 8
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    .line 9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onRotate(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setDisplayOrientation(I)V

    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_3

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FFFF)V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    :cond_3
    return-void
.end method

.method public onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final restoreTorch()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTorch:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTorch:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mFlash:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_2

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mFlash:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 7
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mFlash:I

    :cond_2
    return-void
.end method

.method public declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TORCH_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 4
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 5
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchDirection(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 7
    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1, v3}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 9
    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v1, :cond_2

    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->initAllowedTextures(Z)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->addSupportedTextures(Lcom/motorola/camera/PreviewSize;I)V

    .line 12
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 13
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchDirection(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->animateShow(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 14
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 16
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTorch:I

    .line 17
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 19
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mFlash:I

    .line 20
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTorch:I

    if-ne v1, v6, :cond_3

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 22
    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mFlash:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    if-ne p1, v4, :cond_18

    .line 23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 24
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 25
    :cond_5
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 26
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 27
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 28
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "SLIDER_TAG"

    const/4 v1, -0x1

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 30
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v6, :cond_6

    goto :goto_0

    .line 31
    :cond_6
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->shouldShowTutorial()Z

    move-result v0

    if-nez v0, :cond_8

    .line 32
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 33
    iput-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mShouldHidden:Z

    goto :goto_1

    .line 34
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->hideTutorial()V

    .line 35
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->beginEditSlider(Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 36
    :cond_9
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 p1, 0x4

    .line 37
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_USE_WIDGET_MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 39
    iput-boolean v5, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mShouldHidden:Z

    .line 40
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->hideTutorial()V

    goto/16 :goto_6

    .line 41
    :cond_a
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 42
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 43
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchDirection(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->animateHide(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 44
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->restoreTorch()V

    .line 45
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 46
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p1, :cond_b

    .line 47
    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 48
    :cond_b
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->hideTutorial()V

    goto/16 :goto_6

    .line 49
    :cond_c
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPENING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 50
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p1, :cond_18

    .line 51
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->animateHide(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    goto/16 :goto_6

    .line 52
    :cond_d
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 53
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 54
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 55
    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v1

    if-ne v3, v1, :cond_e

    move v1, v6

    goto :goto_2

    :cond_e
    move v1, v5

    :goto_2
    if-nez v1, :cond_10

    .line 56
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 57
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 58
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v1

    if-ne v0, v1, :cond_f

    move v1, v6

    goto :goto_3

    :cond_f
    move v1, v5

    :goto_3
    if-eqz v1, :cond_14

    .line 59
    :cond_10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 60
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 61
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 62
    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v1

    if-ne v0, v1, :cond_11

    move v5, v6

    :cond_11
    if-eqz v5, :cond_12

    .line 63
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    .line 64
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_4

    .line 65
    :cond_12
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 66
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchDirection(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->animateHide(Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V

    .line 67
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->restoreTorch()V

    .line 68
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->hideTutorial()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 69
    :cond_13
    :goto_4
    monitor-exit p0

    return-void

    .line 70
    :cond_14
    :try_start_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 71
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    if-eqz p1, :cond_18

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->setClickable(Z)V

    goto :goto_6

    .line 72
    :cond_15
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCROLL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 73
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_5

    .line 74
    :cond_16
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 75
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 76
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-array v0, v4, [Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$UseCase;

    aput-object v1, v0, v6

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/Constants$UseCase;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 77
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->initAllowedTextures(Z)V

    .line 78
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->addSupportedTextures(Lcom/motorola/camera/PreviewSize;I)V

    goto :goto_6

    .line 79
    :cond_17
    :goto_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;

    .line 80
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    .line 81
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 82
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 83
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$ModesDragBehavior;->drag(Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :cond_18
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unloadTextures()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->unloadTexture()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mTutorialTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    return-void
.end method
