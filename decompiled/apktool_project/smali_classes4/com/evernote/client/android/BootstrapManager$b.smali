.class public Lcom/evernote/client/android/BootstrapManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/BootstrapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/evernote/edam/userstore/BootstrapInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/evernote/edam/userstore/BootstrapInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evernote/client/android/BootstrapManager$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/evernote/client/android/BootstrapManager$b;->b:Lcom/evernote/edam/userstore/BootstrapInfo;

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/edam/userstore/BootstrapInfo;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/BootstrapManager$b;->b:Lcom/evernote/edam/userstore/BootstrapInfo;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/BootstrapManager$b;->a:Ljava/lang/String;

    return-object p0
.end method
