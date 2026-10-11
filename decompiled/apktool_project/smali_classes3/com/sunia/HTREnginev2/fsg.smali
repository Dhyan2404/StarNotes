.class public final synthetic Lcom/sunia/HTREnginev2/fsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fsg;->e:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fsg;->e:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;

    invoke-virtual {p0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$a;->b()V

    return-void
.end method
