.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;",
        ">;"
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;

.field public static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zze:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzf:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzg:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final zzh:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;

    .line 1
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILkotlin/TuplesKt$$IA$1;)V

    const/4 v3, 0x1

    .line 3
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 4
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    move-result-object v0

    .line 5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 8
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "durationMs"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 10
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILkotlin/TuplesKt$$IA$1;)V

    const/4 v3, 0x2

    .line 12
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 13
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    move-result-object v0

    .line 14
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "imageSource"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 18
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 19
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 20
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILkotlin/TuplesKt$$IA$1;)V

    .line 21
    iput v1, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 22
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    move-result-object v0

    .line 23
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "imageFormat"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 28
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILkotlin/TuplesKt$$IA$1;)V

    const/4 v3, 0x4

    .line 30
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 31
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    move-result-object v0

    .line 32
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 33
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 35
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "imageByteSize"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 36
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 37
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 38
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILkotlin/TuplesKt$$IA$1;)V

    const/4 v3, 0x5

    .line 39
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 40
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    move-result-object v0

    .line 41
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 44
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "imageWidth"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 45
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 46
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 47
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILkotlin/TuplesKt$$IA$1;)V

    const/4 v3, 0x6

    .line 48
    iput v3, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 49
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    move-result-object v0

    .line 50
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 51
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 53
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "imageHeight"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 54
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 55
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdg;

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/zzdg;-><init>(ILkotlin/TuplesKt$$IA$1;)V

    const/4 v1, 0x7

    .line 57
    iput v1, v0, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 58
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzdg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_common/zzs;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 62
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdd$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "rotationDegrees"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 63
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;->zza:Ljava/lang/Long;

    .line 3
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzfm;

    .line 5
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzfg;

    .line 7
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;->zzd:Ljava/lang/Integer;

    .line 9
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 10
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;->zze:Ljava/lang/Integer;

    .line 11
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 12
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;->zzf:Ljava/lang/Integer;

    .line 13
    invoke-interface {p2, p0, v0}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzcv;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 14
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzfn;->zzg:Ljava/lang/Integer;

    .line 15
    invoke-interface {p2, p0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
