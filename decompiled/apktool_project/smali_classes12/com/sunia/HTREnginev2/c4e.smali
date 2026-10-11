.class public final synthetic Lcom/sunia/HTREnginev2/c4e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/record/Comment2000Atom;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/record/Comment2000Atom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/c4e;->e:Lorg/apache/poi/hslf/record/Comment2000Atom;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c4e;->e:Lorg/apache/poi/hslf/record/Comment2000Atom;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Comment2000Atom;->getYOffset()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
