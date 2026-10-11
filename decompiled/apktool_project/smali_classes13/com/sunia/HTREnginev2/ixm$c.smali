.class public final Lcom/sunia/HTREnginev2/ixm$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/ixm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public e:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljavax/xml/stream/Location;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ixm$c;->e:Ljavax/xml/stream/XMLStreamReader;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public b(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ixm$c;->e:Ljavax/xml/stream/XMLStreamReader;

    return-void
.end method

.method public getCharacterOffset()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ixm$c;->a()Ljavax/xml/stream/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getCharacterOffset()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getColumnNumber()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ixm$c;->a()Ljavax/xml/stream/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ixm$c;->a()Ljavax/xml/stream/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ixm$c;->a()Ljavax/xml/stream/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ixm$c;->a()Ljavax/xml/stream/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
