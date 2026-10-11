.class public final synthetic Lorg/apache/xmlbeans/impl/config/h;
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

    check-cast p1, Lcom/github/javaparser/ast/type/ReferenceType;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl$MethodSignatureImpl;->g(Lcom/github/javaparser/ast/type/ReferenceType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
