.class public Lnet/sf/saxon/style/XSLItemType$a;
.super Lnet/sf/saxon/style/ExpressionContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/style/XSLItemType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lnet/sf/saxon/style/XSLItemType;)V
    .locals 3

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, ""

    const-string v2, "as"

    invoke-direct {v0, v1, v1, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/style/ExpressionContext;-><init>(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/om/StructuredQName;)V

    return-void
.end method


# virtual methods
.method public resolveTypeAlias(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/style/ExpressionContext;->resolveTypeAlias(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/ExpressionContext;->getStyleElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/XSLItemType;

    invoke-static {p0}, Lnet/sf/saxon/style/XSLItemType;->Z(Lnet/sf/saxon/style/XSLItemType;)V

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method
