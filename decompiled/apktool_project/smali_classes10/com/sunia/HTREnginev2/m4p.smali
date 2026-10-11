.class public final synthetic Lcom/sunia/HTREnginev2/m4p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lcom/sunia/calculatorv2/ink/editor/EditorListener;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/calculatorv2/ink/editor/EditorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m4p;->e:Lcom/sunia/calculatorv2/ink/editor/EditorListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m4p;->e:Lcom/sunia/calculatorv2/ink/editor/EditorListener;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/q;->M(Lcom/sunia/calculatorv2/ink/editor/EditorListener;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method
