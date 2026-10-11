.class public final synthetic Lcom/sunia/HTREnginev2/yen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/note/common/data/text/TextRender;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yen;->e:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yen;->e:Lcom/onyx/android/sdk/note/common/data/text/TextRender;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/data/text/TextRender$1;->a(Lcom/onyx/android/sdk/note/common/data/text/TextRender;)V

    return-void
.end method
