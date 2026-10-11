.class Lsun/font/SunFontManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/SunFontManager;->createFont2D(Ljava/io/File;IZZLsun/font/CreatedFontTracker;)[Lsun/font/Font2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/font/SunFontManager;


# direct methods
.method public constructor <init>(Lsun/font/SunFontManager;)V
    .locals 0

    iput-object p1, p0, Lsun/font/SunFontManager$8;->this$0:Lsun/font/SunFontManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lsun/font/SunFontManager$8$1;

    invoke-direct {v0, p0}, Lsun/font/SunFontManager$8$1;-><init>(Lsun/font/SunFontManager$8;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method
