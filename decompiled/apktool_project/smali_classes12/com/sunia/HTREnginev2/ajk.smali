.class public final synthetic Lcom/sunia/HTREnginev2/ajk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/record/OutlineTextRefAtom;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/record/OutlineTextRefAtom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ajk;->e:Lorg/apache/poi/hslf/record/OutlineTextRefAtom;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ajk;->e:Lorg/apache/poi/hslf/record/OutlineTextRefAtom;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/OutlineTextRefAtom;->getTextIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
