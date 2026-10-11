.class public final synthetic Lcom/sunia/HTREnginev2/lbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lbf;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lbf;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lbf;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lbf;->f:Ljava/lang/String;

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->t(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method
