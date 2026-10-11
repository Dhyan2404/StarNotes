.class public final Lcom/onyx/galaxy/note/generated/callback/OnClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;

.field public final f:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;->e:Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;

    iput p2, p0, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;->f:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;->e:Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;

    iget p0, p0, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;->f:I

    invoke-interface {v0, p0, p1}, Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;->_internalCallbackOnClick(ILandroid/view/View;)V

    return-void
.end method
