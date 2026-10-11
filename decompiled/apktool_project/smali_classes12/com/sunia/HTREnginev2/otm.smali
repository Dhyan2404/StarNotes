.class public final synthetic Lcom/sunia/HTREnginev2/otm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/record/SlideAtom;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/record/SlideAtom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/otm;->e:Lorg/apache/poi/hslf/record/SlideAtom;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/otm;->e:Lorg/apache/poi/hslf/record/SlideAtom;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/SlideAtom;->getFollowMasterBackground()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
