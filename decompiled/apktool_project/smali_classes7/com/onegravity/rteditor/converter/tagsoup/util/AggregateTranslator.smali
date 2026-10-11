.class public Lcom/onegravity/rteditor/converter/tagsoup/util/AggregateTranslator;
.super Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;
.source "SourceFile"


# instance fields
.field public final a:[Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;


# direct methods
.method public varargs constructor <init>([Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;)V
    .locals 0

    invoke-direct {p0}, Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;-><init>()V

    invoke-static {p1}, Lcom/onegravity/rteditor/converter/tagsoup/util/AggregateTranslator;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/util/AggregateTranslator;->a:[Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;

    return-void
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/tagsoup/util/AggregateTranslator;->a:[Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1, p2, p3}, Lcom/onegravity/rteditor/converter/tagsoup/util/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v3

    if-eqz v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
