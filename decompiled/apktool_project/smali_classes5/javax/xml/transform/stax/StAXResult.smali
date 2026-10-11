.class public Ljavax/xml/transform/stax/StAXResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stax.StAXResult/feature"


# instance fields
.field public final e:Ljavax/xml/stream/XMLStreamWriter;

.field public final f:Ljavax/xml/stream/XMLEventWriter;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLEventWriter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/stax/StAXResult;->e:Ljavax/xml/stream/XMLStreamWriter;

    iput-object p1, p0, Ljavax/xml/transform/stax/StAXResult;->f:Ljavax/xml/stream/XMLEventWriter;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XMLEventWriter cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljavax/xml/transform/stax/StAXResult;->e:Ljavax/xml/stream/XMLStreamWriter;

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/xml/transform/stax/StAXResult;->f:Ljavax/xml/stream/XMLEventWriter;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XMLStreamWriter cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getXMLEventWriter()Ljavax/xml/stream/XMLEventWriter;
    .locals 0

    iget-object p0, p0, Ljavax/xml/transform/stax/StAXResult;->f:Ljavax/xml/stream/XMLEventWriter;

    return-object p0
.end method

.method public getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;
    .locals 0

    iget-object p0, p0, Ljavax/xml/transform/stax/StAXResult;->e:Ljavax/xml/stream/XMLStreamWriter;

    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Setting systemId is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
