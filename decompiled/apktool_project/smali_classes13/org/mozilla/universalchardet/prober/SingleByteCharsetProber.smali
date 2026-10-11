.class public Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field public static final NEGATIVE_CAT:I = 0x0

.field public static final NEGATIVE_SHORTCUT_THRESHOLD:F = 0.05f

.field public static final NUMBER_OF_SEQ_CAT:I = 0x4

.field public static final POSITIVE_CAT:I = 0x3

.field public static final POSITIVE_SHORTCUT_THRESHOLD:F = 0.95f

.field public static final SAMPLE_SIZE:I = 0x40

.field public static final SB_ENOUGH_REL_THRESHOLD:I = 0x400

.field public static final SYMBOL_CAT_ORDER:I = 0xfa


# instance fields
.field public b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field public c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field public d:Z

.field public e:S

.field public f:I

.field public g:[I

.field public h:I

.field public i:I

.field public j:Lorg/mozilla/universalchardet/prober/CharsetProber;


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->d:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->j:Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 5
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->g:[I

    .line 6
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    .line 9
    iput-boolean p2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->d:Z

    .line 10
    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->j:Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 11
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->g:[I

    .line 12
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reset()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 0

    iget-object p0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getKeepEnglishLetter()Z

    move-result p0

    return p0
.end method

.method public getCharSetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->j:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getCharsetName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfidence()F
    .locals 3

    iget v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->f:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->g:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getTypicalPositiveRatio()F

    move-result v0

    div-float/2addr v1, v0

    iget v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->i:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iget p0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->h:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    cmpl-float p0, v1, v2

    if-ltz p0, :cond_0

    const v1, 0x3f7d70a4    # 0.99f

    :cond_0
    return v1

    :cond_1
    const p0, 0x3c23d70a    # 0.01f

    return p0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 5

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_3

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    aget-byte v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getOrder(B)S

    move-result v0

    const/16 v1, 0xfa

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->h:I

    :cond_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    iget v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->i:I

    iget-short v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->e:S

    if-ge v2, v1, :cond_2

    iget v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->f:I

    iget-boolean v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->g:[I

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    mul-int/lit8 v2, v2, 0x40

    add-int/2addr v2, v0

    invoke-virtual {v3, v2}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getPrecedence(I)B

    move-result v2

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->g:[I

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->c:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    mul-int/lit8 v4, v0, 0x40

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getPrecedence(I)B

    move-result v2

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    :cond_2
    :goto_1
    iput-short v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->e:S

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object p2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne p1, p2, :cond_5

    iget p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->f:I

    const/16 p2, 0x400

    if-le p1, p2, :cond_5

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->getConfidence()F

    move-result p1

    const p2, 0x3f733333    # 0.95f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_4

    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_2

    :cond_4
    const p2, 0x3d4ccccd    # 0.05f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    sget-object p1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_5
    :goto_2
    iget-object p0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p0
.end method

.method public final reset()V
    .locals 3

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    const/16 v0, 0xff

    iput-short v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->e:S

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->g:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->f:I

    iput v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->h:I

    iput v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->i:I

    return-void
.end method

.method public setOption()V
    .locals 0

    return-void
.end method
