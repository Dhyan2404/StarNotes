.class public Lcom/onegravity/rteditor/utils/RTLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LINEBREAK_PATTERN:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x1eaef15664afc91cL


# instance fields
.field private mNrOfLines:I

.field private final mParagraphs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onegravity/rteditor/utils/Paragraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\r\\n|\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/utils/RTLayout;->LINEBREAK_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/text/Spanned;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mNrOfLines:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mParagraphs:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    iput v1, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mNrOfLines:I

    sget-object v2, Lcom/onegravity/rteditor/utils/RTLayout;->LINEBREAK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/onegravity/rteditor/utils/Paragraph;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iget v6, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mNrOfLines:I

    if-ne v6, v1, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    move v6, v0

    :goto_1
    invoke-direct {v4, v3, v5, v6, v0}, Lcom/onegravity/rteditor/utils/Paragraph;-><init>(IIZZ)V

    iget-object v3, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mParagraphs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mNrOfLines:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mNrOfLines:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mParagraphs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mNrOfLines:I

    if-ge v2, v4, :cond_3

    new-instance v2, Lcom/onegravity/rteditor/utils/Paragraph;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v4, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mNrOfLines:I

    if-ne v4, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-direct {v2, v3, p1, v0, v1}, Lcom/onegravity/rteditor/utils/Paragraph;-><init>(IIZZ)V

    iget-object p0, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mParagraphs:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public getLineEnd(I)I
    .locals 1

    iget v0, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mNrOfLines:I

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mParagraphs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onegravity/rteditor/utils/Paragraph;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mParagraphs:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onegravity/rteditor/utils/Paragraph;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getLineForOffset(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mNrOfLines:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mParagraphs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onegravity/rteditor/utils/Paragraph;

    invoke-virtual {v2}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v2

    if-lt p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p0, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mParagraphs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getLineStart(I)I
    .locals 1

    iget v0, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mNrOfLines:I

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mParagraphs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onegravity/rteditor/utils/Paragraph;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mParagraphs:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onegravity/rteditor/utils/Paragraph;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getParagraphs()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/onegravity/rteditor/utils/Paragraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mParagraphs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/onegravity/rteditor/utils/RTLayout;->mParagraphs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onegravity/rteditor/utils/Paragraph;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/onegravity/rteditor/utils/Paragraph;->isLast()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    const-string v1, ", "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
