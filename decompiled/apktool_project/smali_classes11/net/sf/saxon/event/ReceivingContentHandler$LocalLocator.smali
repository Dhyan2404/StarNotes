.class public Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/ReceivingContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalLocator"
.end annotation


# instance fields
.field public final e:Lorg/xml/sax/Locator;

.field public levelInEntity:I


# direct methods
.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->e:Lorg/xml/sax/Locator;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->levelInEntity:I

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->e:Lorg/xml/sax/Locator;

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->e:Lorg/xml/sax/Locator;

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->e:Lorg/xml/sax/Locator;

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->e:Lorg/xml/sax/Locator;

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->getLineNumber()I

    move-result v2

    invoke-virtual {p0}, Lnet/sf/saxon/event/ReceivingContentHandler$LocalLocator;->getColumnNumber()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
