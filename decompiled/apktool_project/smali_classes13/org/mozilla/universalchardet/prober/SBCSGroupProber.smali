.class public Lorg/mozilla/universalchardet/prober/SBCSGroupProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# instance fields
.field public b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/universalchardet/prober/CharsetProber;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Win1251Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Win1251Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Koi8rModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Koi8rModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Latin5Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Latin5Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/MacCyrillicModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/MacCyrillicModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Ibm866Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Ibm866Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Ibm855Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Ibm855Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Latin7Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Latin7Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Win1253Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Win1253Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Win1251BulgarianModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Win1251BulgarianModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/ThaiModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/ThaiModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;-><init>()V

    new-instance v1, Lorg/mozilla/universalchardet/prober/HebrewProber;

    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/HebrewProber;-><init>()V

    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V

    new-instance v3, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4, v1}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/universalchardet/prober/HebrewProber;->setModalProbers(Lorg/mozilla/universalchardet/prober/CharsetProber;Lorg/mozilla/universalchardet/prober/CharsetProber;)V

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->reset()V

    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->getConfidence()F

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    :cond_0
    iget-object p0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfidence()F
    .locals 5

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_0

    const p0, 0x3f7d70a4    # 0.99f

    return p0

    :cond_0
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_1

    const p0, 0x3c23d70a    # 0.01f

    return p0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isActive()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v3

    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    iput-object v2, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    move v1, v3

    goto :goto_0

    :cond_4
    return v1
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->filterWithoutEnglishLetters([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_3

    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p3, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->setActive(Z)V

    iget p3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->e:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->e:I

    if-gtz p3, :cond_1

    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_4
    :goto_1
    iget-object p0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p0
.end method

.method public final reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->e:I

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->setActive(Z)V

    iget v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->e:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d:Lorg/mozilla/universalchardet/prober/CharsetProber;

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-void
.end method

.method public setOption()V
    .locals 0

    return-void
.end method
