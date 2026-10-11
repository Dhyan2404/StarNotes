.class public final synthetic Lcom/sunia/HTREnginev2/ysh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ysh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ysh;->e:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;

    check-cast p1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->e(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;)V

    return-void
.end method
