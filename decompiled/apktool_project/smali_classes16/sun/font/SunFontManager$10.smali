.class Lsun/font/SunFontManager$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/SunFontManager;->loadFontFiles()V
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

    iput-object p1, p0, Lsun/font/SunFontManager$10;->this$0:Lsun/font/SunFontManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsun/font/SunFontManager$10;->run()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Void;
    .locals 8

    .line 2
    iget-object v0, p0, Lsun/font/SunFontManager$10;->this$0:Lsun/font/SunFontManager;

    iget-object v1, v0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    sget-boolean v1, Lsun/font/SunFontManager;->noType1Font:Z

    invoke-virtual {v0, v1}, Lsun/font/SunFontManager;->getPlatformFontPath(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v2, p0, Lsun/font/SunFontManager$10;->this$0:Lsun/font/SunFontManager;

    iget-object v3, v2, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 5
    invoke-static/range {v2 .. v7}, Lsun/font/SunFontManager;->access$1100(Lsun/font/SunFontManager;Ljava/lang/String;ZIZZ)V

    .line 6
    :cond_1
    iget-object p0, p0, Lsun/font/SunFontManager$10;->this$0:Lsun/font/SunFontManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/font/SunFontManager;->loadedAllFontFiles:Z

    const/4 p0, 0x0

    return-object p0
.end method
