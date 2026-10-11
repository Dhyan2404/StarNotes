.class public Lnet/sf/saxon/functions/ParseXmlFragment$a;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/ParseXmlFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public e:I

.field public final f:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/functions/ParseXmlFragment$a;->e:I

    iput-boolean p1, p0, Lnet/sf/saxon/functions/ParseXmlFragment$a;->f:Z

    return-void
.end method


# virtual methods
.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/functions/ParseXmlFragment$a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/functions/ParseXmlFragment$a;->e:I

    if-lez v0, :cond_0

    invoke-super {p0}, Lnet/sf/saxon/event/ProxyReceiver;->endElement()V

    :cond_0
    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/functions/ParseXmlFragment$a;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/saxon/functions/ParseXmlFragment$a;->e:I

    if-lez v0, :cond_0

    invoke-super/range {p0 .. p6}, Lnet/sf/saxon/event/ProxyReceiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    :cond_0
    return-void
.end method
