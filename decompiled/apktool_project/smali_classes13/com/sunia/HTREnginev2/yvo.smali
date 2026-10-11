.class public final synthetic Lcom/sunia/HTREnginev2/yvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->setBigDecimalValue(Ljava/math/BigDecimal;)V

    return-void
.end method
