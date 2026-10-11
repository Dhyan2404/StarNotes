.class public final synthetic Lcom/sunia/HTREnginev2/fum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/Boolean;

.field public final synthetic g:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fum;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fum;->f:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/fum;->g:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fum;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/fum;->f:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fum;->g:Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->H(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
