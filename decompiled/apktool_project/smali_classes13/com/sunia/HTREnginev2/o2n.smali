.class public final synthetic Lcom/sunia/HTREnginev2/o2n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/StscResolver;->a(I)[Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object p0

    return-object p0
.end method
