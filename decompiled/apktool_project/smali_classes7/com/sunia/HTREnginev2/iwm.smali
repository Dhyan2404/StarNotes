.class public final synthetic Lcom/sunia/HTREnginev2/iwm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iwm;->e:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/iwm;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/iwm;->e:Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iwm;->f:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;->a(Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItemAdapter;Ljava/lang/Object;)V

    return-void
.end method
