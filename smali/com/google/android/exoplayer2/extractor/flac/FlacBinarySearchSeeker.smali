.class public final Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;
.super Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.source "FlacBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;IJJ)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "flacStreamMetadata",
            "frameStartMarker",
            "firstFramePosition",
            "inputLength"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)V

    new-instance v2, Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;ILcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$1;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    .line 3
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxFrameSize:I

    if-lez v5, :cond_0

    int-to-long v5, v5

    .line 4
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    int-to-long v9, v9

    add-long/2addr v5, v9

    const-wide/16 v9, 0x2

    div-long/2addr v5, v9

    const-wide/16 v9, 0x1

    goto :goto_1

    .line 5
    :cond_0
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    if-ne v5, v6, :cond_1

    if-lez v5, :cond_1

    int-to-long v5, v5

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x1000

    .line 6
    :goto_0
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->channels:I

    int-to-long v9, v9

    mul-long/2addr v5, v9

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->bitsPerSample:I

    int-to-long v9, v9

    mul-long/2addr v5, v9

    const-wide/16 v9, 0x8

    div-long/2addr v5, v9

    const-wide/16 v9, 0x40

    :goto_1
    add-long v13, v5, v9

    const/4 v5, 0x6

    .line 7
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 8
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 9
    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    return-void
.end method
