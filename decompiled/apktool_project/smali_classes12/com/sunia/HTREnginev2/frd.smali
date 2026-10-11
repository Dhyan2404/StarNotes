.class public final synthetic Lcom/sunia/HTREnginev2/frd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/frd;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/frd;->a:Ljava/util/Set;

    invoke-static {p0, p1}, Lorg/apache/commons/io/input/CharacterSetFilterReader;->j(Ljava/util/Set;I)Z

    move-result p0

    return p0
.end method
