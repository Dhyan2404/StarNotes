.class public Lcom/onyx/harfbuzz/graphics/TypefaceManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/graphics/TypefaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/harfbuzz/graphics/TypefaceManager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/onyx/harfbuzz/graphics/TypefaceManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/onyx/harfbuzz/graphics/HBTypeface;Lcom/onyx/harfbuzz/graphics/HBTypeface;)I
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFamilyName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getStyleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/harfbuzz/graphics/HBTypeface;->getStyleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    :cond_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    check-cast p2, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/harfbuzz/graphics/TypefaceManager$b;->a(Lcom/onyx/harfbuzz/graphics/HBTypeface;Lcom/onyx/harfbuzz/graphics/HBTypeface;)I

    move-result p0

    return p0
.end method
