.class Lsun/font/SunFontManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/SunFontManager;->getFontFilesFromPath(Z)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/font/SunFontManager;

.field final synthetic val$filter:Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>(Lsun/font/SunFontManager;Ljava/io/FilenameFilter;)V
    .locals 0

    iput-object p1, p0, Lsun/font/SunFontManager$4;->this$0:Lsun/font/SunFontManager;

    iput-object p2, p0, Lsun/font/SunFontManager$4;->val$filter:Ljava/io/FilenameFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsun/font/SunFontManager$4;->run()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public run()[Ljava/lang/String;
    .locals 6

    .line 2
    iget-object v0, p0, Lsun/font/SunFontManager$4;->this$0:Lsun/font/SunFontManager;

    invoke-static {v0}, Lsun/font/SunFontManager;->access$900(Lsun/font/SunFontManager;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lsun/font/SunFontManager$4;->this$0:Lsun/font/SunFontManager;

    invoke-static {v1}, Lsun/font/SunFontManager;->access$900(Lsun/font/SunFontManager;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lsun/font/SunFontManager$4;->val$filter:Ljava/io/FilenameFilter;

    invoke-virtual {v0, p0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    new-array p0, v2, [Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_1

    .line 6
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 7
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 8
    :goto_1
    iget-object v3, p0, Lsun/font/SunFontManager$4;->this$0:Lsun/font/SunFontManager;

    invoke-static {v3}, Lsun/font/SunFontManager;->access$900(Lsun/font/SunFontManager;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 9
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lsun/font/SunFontManager$4;->this$0:Lsun/font/SunFontManager;

    invoke-static {v4}, Lsun/font/SunFontManager;->access$900(Lsun/font/SunFontManager;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v4, p0, Lsun/font/SunFontManager$4;->val$filter:Ljava/io/FilenameFilter;

    invoke-virtual {v3, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v4, v2

    .line 11
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 12
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_5
    invoke-static {}, Lsun/font/SunFontManager;->access$1000()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
