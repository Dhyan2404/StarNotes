.class public final synthetic Lcom/sunia/HTREnginev2/c7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/usermodel/HSLFFill;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFFill;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/c7h;->e:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/c7h;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/c7h;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/c7h;->e:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/c7h;->f:Ljava/util/List;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c7h;->g:Ljava/util/List;

    check-cast p1, [B

    invoke-static {v0, v1, p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->a(Lorg/apache/poi/hslf/usermodel/HSLFFill;Ljava/util/List;Ljava/util/List;[B)V

    return-void
.end method
