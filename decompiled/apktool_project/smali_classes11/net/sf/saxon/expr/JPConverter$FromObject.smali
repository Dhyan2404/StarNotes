.class public Lnet/sf/saxon/expr/JPConverter$FromObject;
.super Lnet/sf/saxon/expr/JPConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/JPConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromObject"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/JPConverter$FromObject;

    invoke-direct {v0}, Lnet/sf/saxon/expr/JPConverter$FromObject;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/JPConverter$FromObject;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/JPConverter;-><init>()V

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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/expr/JPConverter;->allocate(Ljava/lang/Class;Ljava/lang/reflect/Type;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/expr/JPConverter$FromObject;

    if-eqz v1, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/JPConverter$ExternalObjectWrapper;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/Configuration;->getJavaExternalObjectType(Ljava/lang/Class;)Lnet/sf/saxon/type/JavaExternalObjectType;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/JPConverter$ExternalObjectWrapper;-><init>(Lnet/sf/saxon/type/JavaExternalObjectType;)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/JPConverter;->convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public getCardinality()I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method
