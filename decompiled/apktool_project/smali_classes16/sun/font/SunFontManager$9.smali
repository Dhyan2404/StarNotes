.class Lsun/font/SunFontManager$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/SunFontManager;->loadFonts()V
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

    iput-object p1, p0, Lsun/font/SunFontManager$9;->this$0:Lsun/font/SunFontManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsun/font/SunFontManager$9;->run()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Void;
    .locals 9

    .line 2
    iget-object v0, p0, Lsun/font/SunFontManager$9;->this$0:Lsun/font/SunFontManager;

    iget-object v1, v0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    sget-boolean v1, Lsun/font/SunFontManager;->noType1Font:Z

    invoke-virtual {v0, v1}, Lsun/font/SunFontManager;->getPlatformFontPath(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lsun/font/SunFontManager$9;->this$0:Lsun/font/SunFontManager;

    iget-object v1, v0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsun/font/SunFontManager;->registerFontDirs(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lsun/font/SunFontManager$9;->this$0:Lsun/font/SunFontManager;

    iget-object v1, v0, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lsun/font/SunFontManager;->gotFontsFromPlatform()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v3, p0, Lsun/font/SunFontManager$9;->this$0:Lsun/font/SunFontManager;

    iget-object v4, v3, Lsun/font/SunFontManager;->fontPath:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lsun/font/SunFontManager;->access$1100(Lsun/font/SunFontManager;Ljava/lang/String;ZIZZ)V

    .line 8
    iget-object v0, p0, Lsun/font/SunFontManager$9;->this$0:Lsun/font/SunFontManager;

    iput-boolean v2, v0, Lsun/font/SunFontManager;->loadedAllFontFiles:Z

    .line 9
    :cond_1
    iget-object v0, p0, Lsun/font/SunFontManager$9;->this$0:Lsun/font/SunFontManager;

    iget-object v1, v0, Lsun/font/SunFontManager;->registeredFontFiles:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lsun/font/SunFontManager;->registerOtherFontFiles(Ljava/util/HashSet;)V

    .line 10
    iget-object p0, p0, Lsun/font/SunFontManager$9;->this$0:Lsun/font/SunFontManager;

    invoke-static {p0, v2}, Lsun/font/SunFontManager;->access$1202(Lsun/font/SunFontManager;Z)Z

    const/4 p0, 0x0

    return-object p0
.end method
