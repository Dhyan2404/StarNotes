.class public Lnet/sf/saxon/expr/JPConverter$ExternalObjectWrapper;
.super Lnet/sf/saxon/expr/JPConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/JPConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalObjectWrapper"
.end annotation


# instance fields
.field public final d:Lnet/sf/saxon/type/JavaExternalObjectType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/JavaExternalObjectType;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/JPConverter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/JPConverter$ExternalObjectWrapper;->d:Lnet/sf/saxon/type/JavaExternalObjectType;

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/expr/JPConverter$ExternalObjectWrapper;->d:Lnet/sf/saxon/type/JavaExternalObjectType;

    invoke-virtual {p2}, Lnet/sf/saxon/type/JavaExternalObjectType;->getJavaClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p0, Lnet/sf/saxon/value/ObjectValue;

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/ObjectValue;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java external object of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an instance of the required type "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/JPConverter$ExternalObjectWrapper;->d:Lnet/sf/saxon/type/JavaExternalObjectType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/JavaExternalObjectType;->getJavaClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "XPTY0004"

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/JPConverter$ExternalObjectWrapper;->getItemType()Lnet/sf/saxon/type/JavaExternalObjectType;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/JavaExternalObjectType;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/expr/JPConverter$ExternalObjectWrapper;->d:Lnet/sf/saxon/type/JavaExternalObjectType;

    return-object p0
.end method
