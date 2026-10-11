.class Lsun/awt/Win32FontManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/awt/Win32FontManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/awt/Win32FontManager;


# direct methods
.method public constructor <init>(Lsun/awt/Win32FontManager;)V
    .locals 0

    iput-object p1, p0, Lsun/awt/Win32FontManager$2;->this$0:Lsun/awt/Win32FontManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lsun/awt/Win32FontManager$2;->this$0:Lsun/awt/Win32FontManager;

    sget-object v0, Lsun/font/SunFontManager;->jreFontDirName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsun/awt/Win32FontManager;->registerJREFontsWithPlatform(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
