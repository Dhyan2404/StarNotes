.class public final synthetic Lcom/sunia/HTREnginev2/tvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:[S


# direct methods
.method public synthetic constructor <init>([S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tvo;->e:[S

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tvo;->e:[S

    check-cast p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/XmlComplexContentImpl;->g([SLorg/apache/xmlbeans/impl/values/XmlObjectBase;Ljava/lang/Integer;)V

    return-void
.end method
