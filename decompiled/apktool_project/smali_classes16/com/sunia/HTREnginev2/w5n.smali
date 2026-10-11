.class public final synthetic Lcom/sunia/HTREnginev2/w5n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:Lsun/font/SunFontManager;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lsun/font/SunFontManager;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w5n;->a:Lsun/font/SunFontManager;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/w5n;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w5n;->a:Lsun/font/SunFontManager;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w5n;->b:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lsun/font/SunFontManager;->a(Lsun/font/SunFontManager;Ljava/lang/Runnable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
