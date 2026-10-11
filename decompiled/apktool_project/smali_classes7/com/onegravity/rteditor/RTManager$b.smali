.class public Lcom/onegravity/rteditor/RTManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/rteditor/RTManager;->onFocusChanged(Lcom/onegravity/rteditor/RTEditText;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onegravity/rteditor/RTManager;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/RTManager;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/RTManager$b;->e:Lcom/onegravity/rteditor/RTManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/RTManager$b;->e:Lcom/onegravity/rteditor/RTManager;

    invoke-static {p0}, Lcom/onegravity/rteditor/RTManager;->b(Lcom/onegravity/rteditor/RTManager;)V

    return-void
.end method
