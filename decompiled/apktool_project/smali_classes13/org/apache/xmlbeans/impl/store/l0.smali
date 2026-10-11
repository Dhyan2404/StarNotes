.class public final synthetic Lorg/apache/xmlbeans/impl/store/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->a(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    return-object p0
.end method
