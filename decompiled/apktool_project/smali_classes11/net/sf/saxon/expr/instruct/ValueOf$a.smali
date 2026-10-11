.class public Lnet/sf/saxon/expr/instruct/ValueOf$a;
.super Lnet/sf/saxon/event/ProxyOutputter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/expr/instruct/ValueOf;->processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lnet/sf/saxon/s9api/Location;

.field public final synthetic g:Lnet/sf/saxon/expr/instruct/ValueOf;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/instruct/ValueOf;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ValueOf$a;->g:Lnet/sf/saxon/expr/instruct/ValueOf;

    iput-object p3, p0, Lnet/sf/saxon/expr/instruct/ValueOf$a;->f:Lnet/sf/saxon/s9api/Location;

    invoke-direct {p0, p2}, Lnet/sf/saxon/event/ProxyOutputter;-><init>(Lnet/sf/saxon/event/Outputter;)V

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ValueOf$a;->f:Lnet/sf/saxon/s9api/Location;

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ValueOf$a;->g:Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-static {p0}, Lnet/sf/saxon/expr/instruct/ValueOf;->d(Lnet/sf/saxon/expr/instruct/ValueOf;)I

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/ValueOf$a;->f:Lnet/sf/saxon/s9api/Location;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ValueOf$a;->g:Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-static {p0}, Lnet/sf/saxon/expr/instruct/ValueOf;->d(Lnet/sf/saxon/expr/instruct/ValueOf;)I

    move-result p0

    or-int/2addr p0, p3

    invoke-virtual {v0, p1, p2, p0}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public getStringReceiver(ZLnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/str/UniStringConsumer;
    .locals 1

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/ValueOf$a;->f:Lnet/sf/saxon/s9api/Location;

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyOutputter;->getNextOutputter()Lnet/sf/saxon/event/Outputter;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/event/Outputter;->getStringReceiver(ZLnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/str/UniStringConsumer;

    move-result-object p0

    return-object p0
.end method
