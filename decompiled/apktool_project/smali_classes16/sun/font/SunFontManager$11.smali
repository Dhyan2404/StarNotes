.class Lsun/font/SunFontManager$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/SunFontManager;->register1dot0Fonts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/font/SunFontManager;


# direct methods
.method public constructor <init>(Lsun/font/SunFontManager;)V
    .locals 0

    iput-object p1, p0, Lsun/font/SunFontManager$11;->this$0:Lsun/font/SunFontManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsun/font/SunFontManager$11;->run()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Void;
    .locals 6

    const-string v1, "/usr/openwin/lib/X11/fonts/Type1"

    .line 2
    iget-object v0, p0, Lsun/font/SunFontManager$11;->this$0:Lsun/font/SunFontManager;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/font/SunFontManager;->registerFontsInDir(Ljava/lang/String;ZIZZ)V

    const/4 p0, 0x0

    return-object p0
.end method
