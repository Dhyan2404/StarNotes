.class public final synthetic Lcom/sunia/HTREnginev2/kef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kef;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kef;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/kef;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kef;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/kef;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kef;->g:Ljava/lang/String;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method
