.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzu;
.super Ljava/io/OutputStream;
.source "com.google.mlkit:vision-common@@16.5.0"


# instance fields
.field public final synthetic $r8$classId:I

.field public zza:J


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->$r8$classId:I

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 4

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->$r8$classId:I

    const-wide/16 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    return-void

    .line 2
    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final write([B)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    .line 4
    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    return-void

    .line 5
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    .line 6
    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final write([BII)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ltz p2, :cond_0

    .line 7
    array-length p1, p1

    if-gt p2, p1, :cond_0

    if-ltz p3, :cond_0

    add-int/2addr p2, p3

    if-gt p2, p1, :cond_0

    if-ltz p2, :cond_0

    .line 8
    iget-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :goto_0
    if-ltz p2, :cond_1

    .line 11
    array-length p1, p1

    if-gt p2, p1, :cond_1

    if-ltz p3, :cond_1

    add-int/2addr p2, p3

    if-gt p2, p1, :cond_1

    if-ltz p2, :cond_1

    .line 12
    iget-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;->zza:J

    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 14
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
