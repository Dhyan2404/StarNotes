.class public final synthetic Lcom/sunia/HTREnginev2/q2n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/schema/StscState;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/schema/StscState;ZLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q2n;->e:Lorg/apache/xmlbeans/impl/schema/StscState;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/q2n;->f:Z

    iput-object p3, p0, Lcom/sunia/HTREnginev2/q2n;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q2n;->e:Lorg/apache/xmlbeans/impl/schema/StscState;

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/q2n;->f:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q2n;->g:Ljava/util/Map;

    check-cast p1, Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->a(Lorg/apache/xmlbeans/impl/schema/StscState;ZLjava/util/Map;Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method
