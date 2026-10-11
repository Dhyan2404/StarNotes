.class public final synthetic Lcom/sunia/HTREnginev2/t2n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/schema/StscState;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/schema/StscState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t2n;->e:Lorg/apache/xmlbeans/impl/schema/StscState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t2n;->e:Lorg/apache/xmlbeans/impl/schema/StscState;

    check-cast p1, Lorg/apache/xmlbeans/SchemaModelGroup;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->c(Lorg/apache/xmlbeans/impl/schema/StscState;Lorg/apache/xmlbeans/SchemaModelGroup;)V

    return-void
.end method
