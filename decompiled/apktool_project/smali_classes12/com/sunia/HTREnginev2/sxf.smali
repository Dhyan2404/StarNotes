.class public final synthetic Lcom/sunia/HTREnginev2/sxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/record/ExObjListAtom;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/record/ExObjListAtom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sxf;->e:Lorg/apache/poi/hslf/record/ExObjListAtom;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sxf;->e:Lorg/apache/poi/hslf/record/ExObjListAtom;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExObjListAtom;->getObjectIDSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
