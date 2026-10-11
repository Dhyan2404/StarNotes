.class public Lnet/sf/saxon/value/StringValue$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/XPathComparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/value/StringValue;->getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/lib/StringCollator;

.field public final synthetic f:Lnet/sf/saxon/value/StringValue;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/lib/StringCollator;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/value/StringValue$a;->f:Lnet/sf/saxon/value/StringValue;

    iput-object p2, p0, Lnet/sf/saxon/value/StringValue$a;->e:Lnet/sf/saxon/lib/StringCollator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/value/StringValue$a;->e:Lnet/sf/saxon/lib/StringCollator;

    iget-object p0, p0, Lnet/sf/saxon/value/StringValue$a;->f:Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/StringValue;->getContent()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/value/StringValue;

    iget-object p1, p1, Lnet/sf/saxon/value/StringValue;->content:Lnet/sf/saxon/str/UnicodeString;

    invoke-interface {v0, p0, p1}, Lnet/sf/saxon/lib/StringCollator;->compareStrings(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare xs:string to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/sf/saxon/expr/sort/XPathComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/StringValue$a;->a(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method
