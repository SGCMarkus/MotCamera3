.class public Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;
.super Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;
.source "HelpTooltips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpotColorAdjustLevelTooltip"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V
    .locals 12

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const v4, 0x7f110479

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;-><init>(JIIILandroid/util/SizeF;IZZZZ)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mRadius:Ljava/lang/Float;

    const/high16 p1, 0x41400000    # 12.0f

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingX:Ljava/lang/Float;

    const/high16 p1, 0x41000000    # 8.0f

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingY:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ADJUST_SELECT_COLOR_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    return-void
.end method

.method public markDismissed()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ADJUST_SELECT_COLOR_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mShowSpotColorLevelTip:Z

    return-void
.end method

.method public shouldDismiss(Lcom/motorola/camera/fsm/ChangeEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/Collection;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    .line 2
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mShowSpotColorLevelTip:Z

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateDisplay(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->updateDisplay()V

    .line 2
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-static {}, Lcom/motorola/camera/ui/LayoutManager;->getToggleBarGuideLine()F

    move-result v1

    const/high16 v2, 0x42880000    # 68.0f

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    sub-float/2addr p2, v1

    .line 4
    rem-int/lit16 v1, p3, 0xb4

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_0
    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr v1, p2

    const/high16 p2, 0x41800000    # 16.0f

    mul-float/2addr p1, p2

    add-float/2addr p1, v1

    if-eq p3, v2, :cond_3

    const/16 p2, 0xb4

    if-eq p3, p2, :cond_2

    const/16 p2, 0x10e

    if-eq p3, p2, :cond_1

    const/4 p2, 0x4

    .line 5
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x5

    .line 6
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    .line 7
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    goto :goto_1

    :cond_3
    const/4 p2, 0x3

    .line 8
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    :goto_1
    const/4 p2, 0x0

    .line 9
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowPosition:F

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, p2, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-void
.end method