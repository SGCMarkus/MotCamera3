.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzhs;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;


# instance fields
.field public final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhs;->zza:Ljava/util/List;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;->zzc()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Landroidx/fragment/app/FragmentStore;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhs;->zza:Ljava/util/List;

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;->zza(Landroidx/fragment/app/FragmentStore;)V

    goto :goto_0

    :cond_0
    return-void
.end method
