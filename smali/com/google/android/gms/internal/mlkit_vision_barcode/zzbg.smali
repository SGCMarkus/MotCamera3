.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient zza:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    :goto_0
    return p0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zzn()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcm;->zzn()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zzn()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zzn()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;->zza:Ljava/util/Map;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzn()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zzb:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbe;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbe;->zza:Ljava/util/Map;

    .line 3
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbe;Ljava/util/Map;)V

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zzb:Ljava/util/Map;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final zzo()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbe;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzay;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbe;->zza:Ljava/util/Map;

    .line 3
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzay;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbe;Ljava/util/Map;)V

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->zza:Ljava/util/Set;

    return-object v1

    :cond_0
    return-object v0
.end method
