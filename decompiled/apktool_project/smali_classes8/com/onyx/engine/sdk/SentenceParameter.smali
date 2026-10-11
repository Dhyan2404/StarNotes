.class public Lcom/onyx/engine/sdk/SentenceParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEFAULT_BREAK_SPLITTER:Ljava/lang/String; = "\uff0c,.?!\u055c\u055e\u061f\u06d4\u0700\u0701\u0702\u07f9\u0964\u0965\u104a\u104b\u1362\u1367\u1368\u166e\u1803\u1809\u1944\u1945\u1aa8\u1aa9\u1aaa\u1aab\u1b5a\u1b5b\u1b5e\u1b5f\u1b5d\u1c3b\u1c3c\u1c7e\u1c7f\u203c\u203d\u2047\u2048\u2049\u2e2e\u3002\ua4ff\ua60e\ua60f\ua6f3\ua6f7\ua876\ua877\ua8ce\ua8cf\ua92f\ua9c8\ua9c9\uaa5d\uaa5e\uaa5f\uaaf0\uaaf1\uabeb\ufe52\ufe56\ufe57\uff01\uff0e\uff1f\uff61\ud800\udc47\ud800\udc48\ud804\udcbe\ud804\udcbf\ud804\udd41\ud804\udd42\ud804\udd43\ud804\uddc5\ud804\uddc6\ud804\uddcd\ud804\ude3b\ud804\ude3c\ud805\uddc2\ud805\uddc3\ud805\uddc9\ud805\ude41\ud805\ude42\ud805\udf3c\ud805\udf3d\ud809\udc70\ud809\udc71\ud802\ude50\ud802\ude51\ud802\ude52\ud802\ude53\ud802\ude54\ud802\ude55\ud802\ude56\ud802\ude57\ud802\ude58"

.field public static final MAX_SENTENCE_LENGTH:I = 0xc8

.field public static final MAX_SENTENCE_LIMIT:I = 0xa


# instance fields
.field breakSplitter:Ljava/lang/String;

.field end:Lcom/onyx/engine/sdk/PinPosition;

.field filterBlankSentence:Z

.field limit:I

.field maxSentenceLength:I

.field start:Lcom/onyx/engine/sdk/PinPosition;

.field updateChapter:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/PinPosition;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->start:Lcom/onyx/engine/sdk/PinPosition;

    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/PinPosition;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->end:Lcom/onyx/engine/sdk/PinPosition;

    const/16 v0, 0xa

    iput v0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->limit:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->maxSentenceLength:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->updateChapter:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->filterBlankSentence:Z

    sget-object v0, Lcom/onyx/engine/sdk/SentenceParameter;->DEFAULT_BREAK_SPLITTER:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->breakSplitter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBreakSplitter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->breakSplitter:Ljava/lang/String;

    return-object p0
.end method

.method public getEnd()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->end:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getLimit()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->limit:I

    return p0
.end method

.method public getMaxSentenceLength()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->maxSentenceLength:I

    return p0
.end method

.method public getStart()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->start:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public isFilterBlankSentence()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->filterBlankSentence:Z

    return p0
.end method

.method public isUpdateChapter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/SentenceParameter;->updateChapter:Z

    return p0
.end method

.method public setBreakSplitter(Ljava/lang/String;)Lcom/onyx/engine/sdk/SentenceParameter;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SentenceParameter;->breakSplitter:Ljava/lang/String;

    return-object p0
.end method

.method public setEnd(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/SentenceParameter;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SentenceParameter;->end:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setFilterBlankSentence(Z)Lcom/onyx/engine/sdk/SentenceParameter;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/SentenceParameter;->filterBlankSentence:Z

    return-object p0
.end method

.method public setLimit(I)Lcom/onyx/engine/sdk/SentenceParameter;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/SentenceParameter;->limit:I

    return-object p0
.end method

.method public setMaxSentenceLength(I)Lcom/onyx/engine/sdk/SentenceParameter;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/SentenceParameter;->maxSentenceLength:I

    return-object p0
.end method

.method public setStart(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/SentenceParameter;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SentenceParameter;->start:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setUpdateChapter(Z)Lcom/onyx/engine/sdk/SentenceParameter;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/SentenceParameter;->updateChapter:Z

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
