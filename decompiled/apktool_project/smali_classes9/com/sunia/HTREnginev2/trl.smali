.class public final synthetic Lcom/sunia/HTREnginev2/trl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/onyx/galaxy/note/ui/view/RichTextView;


# direct methods
.method public synthetic constructor <init>(ILcom/onyx/galaxy/note/ui/view/RichTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/trl;->e:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/trl;->f:Lcom/onyx/galaxy/note/ui/view/RichTextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/trl;->e:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/trl;->f:Lcom/onyx/galaxy/note/ui/view/RichTextView;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/utils/RichTextViewEx;->a(ILcom/onyx/galaxy/note/ui/view/RichTextView;)V

    return-void
.end method
