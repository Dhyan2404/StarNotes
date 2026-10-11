.class public Lnet/sf/saxon/jaxp/TemplatesHandlerImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/Locator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->setSystemId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl$a;->e:Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl$a;->e:Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;

    invoke-static {p0}, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->d(Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
