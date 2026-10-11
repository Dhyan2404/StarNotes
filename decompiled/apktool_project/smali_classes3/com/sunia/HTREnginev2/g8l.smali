.class public final synthetic Lcom/sunia/HTREnginev2/g8l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/profileinstaller/ProfileInstallerInitializer;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g8l;->e:Landroidx/profileinstaller/ProfileInstallerInitializer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/g8l;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/g8l;->e:Landroidx/profileinstaller/ProfileInstallerInitializer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/g8l;->f:Landroid/content/Context;

    invoke-static {v0, p0}, Landroidx/profileinstaller/ProfileInstallerInitializer;->a(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V

    return-void
.end method
