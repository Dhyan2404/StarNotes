.class public Lbin/mt/signature/KillerApplicationmt;
.super Ljava/lang/Object;
.source "CustomTelegramDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbin/mt/signature/KillerApplicationmt$Config;
    }
.end annotation


# static fields
.field private static $:[S

.field private static KEY_DONT_SHOW_DIALOG:Ljava/lang/String;

.field private static PREFS_NAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static currentContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static currentDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static $(III)Ljava/lang/String;
    .locals 4

    sub-int v2, p1, p0

    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_0
    sub-int v2, p1, p0

    if-ge v1, v2, :cond_0

    sget-object v2, Lbin/mt/signature/KillerApplicationmt;->$:[S

    add-int v3, p0, v1

    aget-short v2, v2, v3

    xor-int/2addr v2, p2

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method static constructor <clinit>()V
    .locals 3

    const v0, 0x6bf

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lbin/mt/signature/KillerApplicationmt;->$:[S

    const v0, 0x68f

    const v1, 0x69f

    const v2, 0x705

    invoke-static/range {v0 .. v2}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbin/mt/signature/KillerApplicationmt;->KEY_DONT_SHOW_DIALOG:Ljava/lang/String;

    const v0, 0x69f

    const v1, 0x6ab

    const v2, -0x6722

    invoke-static/range {v0 .. v2}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbin/mt/signature/KillerApplicationmt;->PREFS_NAME:Ljava/lang/String;

    const v0, 0x6ab

    const v1, 0x6bf

    const v2, 0x5c30

    invoke-static/range {v0 .. v2}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbin/mt/signature/KillerApplicationmt;->TAG:Ljava/lang/String;

    nop

    return-void

    nop

    :array_0
    .array-data 2
        -0x3f11s
        -0x3f38s
        -0x3f40s
        -0x3f3bs
        -0x3f34s
        -0x3f33s
        -0x3f77s
        -0x3f23s
        -0x3f3as
        -0x3f77s
        -0x3f3bs
        -0x3f3as
        -0x3f38s
        -0x3f33s
        -0x3f77s
        -0x109bs
        -0x10ads
        -0x10abs
        -0x10aes
        -0x10b7s
        -0x10b5s
        -0x108es
        -0x10bds
        -0x10b6s
        -0x10bds
        -0x10bfs
        -0x10acs
        -0x10b9s
        -0x10b5s
        -0x109es
        -0x10b1s
        -0x10b9s
        -0x10b6s
        -0x10b7s
        -0x10bfs
        -0x982s
        -0x998s
        -0x985s
        -0x993s
        -0x985s
        -0x988s
        -0x98as
        -0x981s
        -0x1cdes
        -0x1c92s
        -0x1c93s
        -0x1c9ds
        -0x1c9as
        -0x1c99s
        -0x1c9as
        -0x1cdes
        -0x1c9cs
        -0x1c90s
        -0x1c93s
        -0x1c91s
        -0x1cdes
        -0x1c9as
        -0x1c90s
        -0x1c9ds
        -0x1c8bs
        -0x1c9ds
        -0x1ca0s
        -0x1c92s
        -0x1c99s
        -0x1cdes
        -0x1c90s
        -0x1c99s
        -0x1c8fs
        -0x1c93s
        -0x1c89s
        -0x1c90s
        -0x1c9fs
        -0x1c99s
        -0x3868s
        -0x3822s
        -0x3836s
        -0x3829s
        -0x382bs
        -0x3868s
        -0x3824s
        -0x3836s
        -0x3827s
        -0x3831s
        -0x3827s
        -0x3826s
        -0x382cs
        -0x3823s
        -0x387es
        -0x3868s
        -0x6d7s
        -0x69bs
        -0x69as
        -0x698s
        -0x693s
        -0x694s
        -0x693s
        -0x6d7s
        -0x691s
        -0x685s
        -0x69as
        -0x69cs
        -0x6d7s
        -0x698s
        -0x686s
        -0x686s
        -0x694s
        -0x683s
        -0x686s
        -0x6cds
        -0x6d7s
        -0xb8fs
        -0xbc9s
        -0xbdds
        -0xbc2s
        -0xbc4s
        -0xb8fs
        -0xbd0s
        -0xbdes
        -0xbdes
        -0xbccs
        -0xbdbs
        -0xb8fs
        -0xbdfs
        -0xbd0s
        -0xbdbs
        -0xbc7s
        -0xb8fs
        -0x560s
        -0x546s
        -0x17dfs
        -0x17f0s
        -0x17e7s
        -0x17f0s
        -0x17ees
        -0x17f9s
        -0x17ecs
        -0x17e8s
        -0x1eb9s
        -0x1ea0s
        -0x1e83s
        -0x1e86s
        -0x1e91s
        -0x1e97s
        -0x1e84s
        -0x1e91s
        -0x1e9ds
        -0x1e2cs
        -0x1e1es
        -0x1e08s
        -0x1e27s
        -0x1e08s
        -0x1e11s
        -0x1e18s
        -0xfc7s
        -0xfe1s
        -0xffbs
        -0xffes
        -0xff5s
        -0xfb4s
        -0xff6s
        -0xff3s
        -0x1000s
        -0x1000s
        -0xff2s
        -0xff3s
        -0xff1s
        -0xff9s
        -0xfb4s
        -0xfe1s
        -0xfebs
        -0xfe1s
        -0xfe8s
        -0xff7s
        -0xfffs
        -0xfb4s
        -0xffbs
        -0xff1s
        -0xffds
        -0xffes
        -0xfb4s
        -0xff6s
        -0xffds
        -0xfe2s
        -0xfb4s
        -0x537s
        -0x558s
        -0x558s
        -0x558s
        -0x558s
        -0x558s
        -0x558s
        -0x112es
        -0x113as
        -0x113cs
        -0x113as
        -0x113cs
        -0x113as
        -0x113cs
        0x4f42s
        0x4f55s
        0x4f55s
        0x4f55s
        0x4f55s
        0x4f55s
        0x4f55s
        0x6a59s
        0x6a3es
        0x6a3es
        0x6a3es
        0x6a3es
        0x6a3es
        0x6a3es
        0x157es
        0x1549s
        0x1549s
        0x1554s
        0x1549s
        0x151bs
        0x1558s
        0x1557s
        0x1554s
        0x1548s
        0x1552s
        0x1555s
        0x155cs
        0x151bs
        0x1552s
        0x1555s
        0x154bs
        0x154es
        0x154fs
        0x151bs
        0x1548s
        0x154fs
        0x1549s
        0x155es
        0x155as
        0x1556s
        0x1501s
        0x151bs
        0x6f6s
        0x6c0s
        0x6c6s
        0x6c1s
        0x6das
        0x6d8s
        0x6e1s
        0x6d0s
        0x6d9s
        0x6d0s
        0x6d2s
        0x6c7s
        0x6d4s
        0x6d8s
        0x6f1s
        0x6dcs
        0x6d4s
        0x6d9s
        0x6das
        0x6d2s
        0x1b82s
        0x1baes
        0x1bb4s
        0x1bads
        0x1ba5s
        0x1bafs
        0x1be6s
        0x1bb5s
        0x1be1s
        0x1bads
        0x1baes
        0x1ba0s
        0x1ba5s
        0x1be1s
        0x1ba3s
        0x1ba8s
        0x1bb5s
        0x1bacs
        0x1ba0s
        0x1bb1s
        0x1be1s
        0x1ba7s
        0x1bb3s
        0x1baes
        0x1bacs
        0x1be1s
        0x1ba0s
        0x1bb2s
        0x1bb2s
        0x1ba4s
        0x1bb5s
        0x1bfbs
        0x1be1s
        0x2267s
        0x226as
        0x2267s
        0x291es
        0x2928s
        0x292es
        0x2929s
        0x2932s
        0x2930s
        0x2909s
        0x2938s
        0x2931s
        0x2938s
        0x293as
        0x292fs
        0x293cs
        0x2930s
        0x2919s
        0x2934s
        0x293cs
        0x2931s
        0x2932s
        0x293as
        0x31fbs
        0x31ccs
        0x31ccs
        0x31d1s
        0x31ccs
        0x319es
        0x31das
        0x31d7s
        0x31cds
        0x31d3s
        0x31d7s
        0x31cds
        0x31cds
        0x31d7s
        0x31d0s
        0x31d9s
        0x319es
        0x31das
        0x31d7s
        0x31dfs
        0x31d2s
        0x31d1s
        0x31d9s
        0x3184s
        0x319es
        0x342cs
        0x341bs
        0x341bs
        0x3406s
        0x341bs
        0x3449s
        0x3400s
        0x3407s
        0x3449s
        0x3401s
        0x3408s
        0x3407s
        0x340ds
        0x3405s
        0x340cs
        0x342as
        0x3406s
        0x3407s
        0x340fs
        0x3400s
        0x340es
        0x341cs
        0x341bs
        0x3408s
        0x341ds
        0x3400s
        0x3406s
        0x3407s
        0x342as
        0x3401s
        0x3408s
        0x3407s
        0x340es
        0x340cs
        0x340ds
        0x3453s
        0x3449s
        0xc0as
        0xc0cs
        0xc1fs
        0xc10s
        0xc0ds
        0xc12s
        0xc1fs
        0xc0as
        0xc17s
        0xc11s
        0xc10s
        0xc27s
        0x102bs
        0x103bs
        0x1039s
        0x1034s
        0x103ds
        0x1001s
        0x1f23s
        0x1f33s
        0x1f31s
        0x1f3cs
        0x1f35s
        0x1f08s
        0x1d0s
        0x1ffs
        0x1f8s
        0x1fcs
        0x1f0s
        0x1e5s
        0x1f8s
        0x1fes
        0x1ffs
        0x1b1s
        0x1f4s
        0x1e3s
        0x1e3s
        0x1fes
        0x1e3s
        0x1abs
        0x1b1s
        0x236bs
        0x235ds
        0x235bs
        0x235cs
        0x2347s
        0x2345s
        0x237cs
        0x234ds
        0x2344s
        0x234ds
        0x234fs
        0x235as
        0x2349s
        0x2345s
        0x236cs
        0x2341s
        0x2349s
        0x2344s
        0x2347s
        0x234fs
        -0x4a49s
        -0x4a48s
        -0x4a4es
        -0x4a5cs
        -0x4a47s
        -0x4a41s
        -0x4a4es
        -0x4a08s
        -0x4a41s
        -0x4a48s
        -0x4a5es
        -0x4a4ds
        -0x4a48s
        -0x4a5es
        -0x4a08s
        -0x4a49s
        -0x4a4bs
        -0x4a5es
        -0x4a41s
        -0x4a47s
        -0x4a48s
        -0x4a08s
        -0x4a80s
        -0x4a61s
        -0x4a6ds
        -0x4a7fs
        -0x6a28s
        -0x6a3cs
        -0x6a3cs
        -0x6a40s
        -0x6a3ds
        -0x6a76s
        -0x6a61s
        -0x6a61s
        -0x6a2es
        -0x6a27s
        -0x6a3cs
        -0x6a62s
        -0x6a24s
        -0x6a37s
        -0x6a61s
        -0x6a23s
        -0x6a61s
        -0x6a2bs
        -0x6a24s
        -0x6a2fs
        -0x6a21s
        -0x6a2as
        -0x6a2as
        -0x6a27s
        -0x6a2ds
        -0x6a2fs
        -0x6a24s
        -0x7876s
        -0x7858s
        -0x7859s
        -0x7859s
        -0x785as
        -0x7843s
        -0x7817s
        -0x785as
        -0x7847s
        -0x7854s
        -0x7859s
        -0x7817s
        -0x7863s
        -0x7854s
        -0x785bs
        -0x7854s
        -0x7852s
        -0x7845s
        -0x7858s
        -0x785cs
        -0x6401s
        -0x6410s
        -0x6406s
        -0x6414s
        -0x640fs
        -0x6409s
        -0x6406s
        -0x6450s
        -0x6409s
        -0x6410s
        -0x6416s
        -0x6405s
        -0x6410s
        -0x6416s
        -0x6450s
        -0x6401s
        -0x6403s
        -0x6416s
        -0x6409s
        -0x640fs
        -0x6410s
        -0x6450s
        -0x6438s
        -0x6429s
        -0x6425s
        -0x6437s
        -0x651cs
        -0x6508s
        -0x6508s
        -0x6504s
        -0x6501s
        -0x654as
        -0x655ds
        -0x655ds
        -0x6505s
        -0x6505s
        -0x6505s
        -0x655es
        -0x651bs
        -0x651es
        -0x6501s
        -0x6508s
        -0x6513s
        -0x6515s
        -0x6502s
        -0x6513s
        -0x651fs
        -0x655es
        -0x6511s
        -0x651ds
        -0x651fs
        -0x655ds
        -0x6517s
        -0x6518s
        -0x6507s
        -0x6511s
        -0x6513s
        -0x6508s
        -0x651bs
        -0x651ds
        -0x651es
        -0x6520s
        -0x6517s
        -0x6513s
        -0x6502s
        -0x651es
        -0x6513s
        -0x6511s
        -0x6513s
        -0x6518s
        -0x6517s
        -0x651fs
        -0x650bs
        -0x655ds
        -0x7eafs
        -0x7e8ds
        -0x7e84s
        -0x7e84s
        -0x7e83s
        -0x7e9as
        -0x7eces
        -0x7e83s
        -0x7e9es
        -0x7e89s
        -0x7e84s
        -0x7eces
        -0x7ea5s
        -0x7e84s
        -0x7e9fs
        -0x7e9as
        -0x7e8ds
        -0x7e8bs
        -0x7ea0s
        -0x7e8ds
        -0x7e81s
        -0x62fds
        -0x62f4s
        -0x62fas
        -0x62f0s
        -0x62f3s
        -0x62f5s
        -0x62fas
        -0x62b4s
        -0x62f5s
        -0x62f4s
        -0x62eas
        -0x62f9s
        -0x62f4s
        -0x62eas
        -0x62b4s
        -0x62fds
        -0x62ffs
        -0x62eas
        -0x62f5s
        -0x62f3s
        -0x62f4s
        -0x62b4s
        -0x62ccs
        -0x62d5s
        -0x62d9s
        -0x62cbs
        -0x4b8bs
        -0x4b97s
        -0x4b97s
        -0x4b93s
        -0x4b92s
        -0x4bd9s
        -0x4bces
        -0x4bces
        -0x4b96s
        -0x4b96s
        -0x4b96s
        -0x4bcds
        -0x4b9cs
        -0x4b8es
        -0x4b98s
        -0x4b97s
        -0x4b98s
        -0x4b81s
        -0x4b88s
        -0x4bcds
        -0x4b82s
        -0x4b8es
        -0x4b90s
        -0x4bces
        -0x4b82s
        -0x4bces
        -0x4b88s
        -0x4b87s
        -0x4b98s
        -0x4b82s
        -0x4b84s
        -0x4b97s
        -0x4b8cs
        -0x4b8es
        -0x4b8ds
        -0x4b8fs
        -0x4b88s
        -0x4b84s
        -0x4b91s
        -0x4b8ds
        -0x4b84s
        -0x4b82s
        -0x4b84s
        -0x4b87s
        -0x4b88s
        -0x4b90s
        -0x4b9cs
        -0x6204s
        -0x6222s
        -0x622fs
        -0x622fs
        -0x6230s
        -0x6235s
        -0x6261s
        -0x6230s
        -0x6231s
        -0x6226s
        -0x622fs
        -0x6261s
        -0x621as
        -0x6230s
        -0x6236s
        -0x6215s
        -0x6236s
        -0x6223s
        -0x6226s
        -0x62d5s
        -0x62e4s
        -0x62e4s
        -0x62ffs
        -0x62e4s
        -0x62b2s
        -0x62f6s
        -0x62f9s
        -0x62e3s
        -0x62fds
        -0x62f9s
        -0x62e3s
        -0x62e3s
        -0x62f9s
        -0x6300s
        -0x62f7s
        -0x62b2s
        -0x62f6s
        -0x62f9s
        -0x62f1s
        -0x62fes
        -0x62ffs
        -0x62f7s
        -0x62acs
        -0x62b2s
        -0x74cfs
        -0x74f9s
        -0x74ffs
        -0x74fas
        -0x74e3s
        -0x74e1s
        -0x74das
        -0x74e9s
        -0x74e2s
        -0x74e9s
        -0x74ebs
        -0x7500s
        -0x74eds
        -0x74e1s
        -0x74cas
        -0x74e5s
        -0x74eds
        -0x74e2s
        -0x74e3s
        -0x74ebs
        -0x4e85s
        -0x4e8cs
        -0x4e82s
        -0x4e98s
        -0x4e8bs
        -0x4e8ds
        -0x4e82s
        -0x4eccs
        -0x4e8ds
        -0x4e8cs
        -0x4e92s
        -0x4e81s
        -0x4e8cs
        -0x4e92s
        -0x4eccs
        -0x4e85s
        -0x4e87s
        -0x4e92s
        -0x4e8ds
        -0x4e8bs
        -0x4e8cs
        -0x4eccs
        -0x4eb4s
        -0x4eads
        -0x4ea1s
        -0x4eb3s
        -0x73eds
        -0x73f1s
        -0x73f1s
        -0x73f5s
        -0x73f8s
        -0x73bfs
        -0x73acs
        -0x73acs
        -0x73f1s
        -0x73e2s
        -0x73e9s
        -0x73e2s
        -0x73e4s
        -0x73f7s
        -0x73e6s
        -0x73eas
        -0x73abs
        -0x73eas
        -0x73e2s
        -0x73acs
        -0x73c2s
        -0x73c9s
        -0x73c6s
        -0x73cas
        -0x73ccs
        -0x73c1s
        -0x73d8s
        -0x73dcs
        -0x73ccs
        -0x73c3s
        -0x73c3s
        -0x73ces
        -0x73c8s
        -0x73c6s
        -0x73c9s
        -0x73dcs
        -0x73d8s
        -0x73d1s
        -0x73ccs
        -0x73d7s
        -0x73c2s
        -0x7b6fs
        -0x7b4ds
        -0x7b44s
        -0x7b44s
        -0x7b43s
        -0x7b5as
        -0x7b0es
        -0x7b43s
        -0x7b5es
        -0x7b49s
        -0x7b44s
        -0x7b0es
        -0x7b7as
        -0x7b49s
        -0x7b42s
        -0x7b49s
        -0x7b4bs
        -0x7b60s
        -0x7b4ds
        -0x7b41s
        -0x7abes
        -0x7a8bs
        -0x7a8bs
        -0x7a98s
        -0x7a8bs
        -0x7ad9s
        -0x7a9ds
        -0x7a92s
        -0x7a8cs
        -0x7a96s
        -0x7a92s
        -0x7a8cs
        -0x7a8cs
        -0x7a92s
        -0x7a97s
        -0x7aa0s
        -0x7ad9s
        -0x7a9ds
        -0x7a92s
        -0x7a9as
        -0x7a95s
        -0x7a98s
        -0x7aa0s
        -0x7ac3s
        -0x7ad9s
        -0x4ccds
        -0x4cfbs
        -0x4cfds
        -0x4cfcs
        -0x4ce1s
        -0x4ce3s
        -0x4cdcs
        -0x4cebs
        -0x4ce4s
        -0x4cebs
        -0x4ce9s
        -0x4cfes
        -0x4cefs
        -0x4ce3s
        -0x4cccs
        -0x4ce7s
        -0x4cefs
        -0x4ce4s
        -0x4ce1s
        -0x4ce9s
        0x5cfes
        0x5cd7s
        0x5cdas
        0x5cf6s
        0x5cd4s
        0x5cdfs
        0x5cc8s
        0x5cebs
        0x5cc9s
        0x5cdes
        0x5cdds
        0x5cc8s
        0x66abs
        0x66a0s
        0x66a1s
        0x66bbs
        0x6690s
        0x66bcs
        0x66a7s
        0x66a0s
        0x66b8s
        0x6690s
        0x66abs
        0x66a6s
        0x66aes
        0x66a3s
        0x66a0s
        0x66a8s
        0x40afs
        0x4098s
        0x4098s
        0x4085s
        0x4098s
        0x40cas
        0x4098s
        0x408fs
        0x4099s
        0x408fs
        0x409es
        0x409es
        0x4083s
        0x4084s
        0x408ds
        0x40cas
        0x409as
        0x4098s
        0x408fs
        0x408cs
        0x408fs
        0x4098s
        0x408fs
        0x4084s
        0x4089s
        0x408fs
        0x4099s
        0x40d0s
        0x40cas
        0x462ds
        0x461bs
        0x461ds
        0x461as
        0x4601s
        0x4603s
        0x463as
        0x460bs
        0x4602s
        0x460bs
        0x4609s
        0x461cs
        0x460fs
        0x4603s
        0x462as
        0x4607s
        0x460fs
        0x4602s
        0x4601s
        0x4609s
        0x6ffds
        0x6fd4s
        0x6fd9s
        0x6ff5s
        0x6fd7s
        0x6fdcs
        0x6fcbs
        0x6fe8s
        0x6fcas
        0x6fdds
        0x6fdes
        0x6fcbs
        0x782fs
        0x7824s
        0x7825s
        0x783fs
        0x7814s
        0x7838s
        0x7823s
        0x7824s
        0x783cs
        0x7814s
        0x782fs
        0x7822s
        0x782as
        0x7827s
        0x7824s
        0x782cs
        0x7737s
        0x7700s
        0x7700s
        0x771ds
        0x7700s
        0x7752s
        0x7701s
        0x7713s
        0x7704s
        0x771bs
        0x771cs
        0x7715s
        0x7752s
        0x7702s
        0x7700s
        0x7717s
        0x7714s
        0x7717s
        0x7700s
        0x7717s
        0x771cs
        0x7711s
        0x7717s
        0x7701s
        0x7748s
        0x7752s
        0x75b5s
        0x7583s
        0x7585s
        0x7582s
        0x7599s
        0x759bs
        0x75a2s
        0x7593s
        0x759as
        0x7593s
        0x7591s
        0x7584s
        0x7597s
        0x759bs
        0x75b2s
        0x759fs
        0x7597s
        0x759as
        0x7599s
        0x7591s
        -0x5f06s
        -0x5f2ds
        -0x5f22s
        -0x5f0es
        -0x5f30s
        -0x5f25s
        -0x5f34s
        -0x5f11s
        -0x5f33s
        -0x5f26s
        -0x5f27s
        -0x5f34s
        -0x7ddes
        -0x7dd7s
        -0x7dd8s
        -0x7dces
        -0x7de7s
        -0x7dcbs
        -0x7dd2s
        -0x7dd7s
        -0x7dcfs
        -0x7de7s
        -0x7ddes
        -0x7dd1s
        -0x7dd9s
        -0x7dd6s
        -0x7dd7s
        -0x7ddfs
        -0x309s
        -0x33fs
        -0x339s
        -0x340s
        -0x325s
        -0x327s
        -0x320s
        -0x32fs
        -0x328s
        -0x32fs
        -0x32ds
        -0x33as
        -0x32bs
        -0x327s
        -0x310s
        -0x323s
        -0x32bs
        -0x328s
        -0x325s
        -0x32ds
        -0x2ef6s
        -0x2eecs
        -0x2eeds
        -0x2ee7s
        -0x2eees
        -0x2ef6s
        -0x28b9s
        -0x28aas
        -0x28ads
        -0x28aas
        -0x28ads
        -0x28aas
        -0x28ads
        -0x3b78s
        -0x3b75s
        -0x3b7ds
        -0x3b75s
        -0x3b45s
        -0x3b73s
        -0x3b79s
        -0x3b75s
        -0x3b76s
        -0x3399s
        -0x338fs
        -0x339es
        -0x338cs
        -0x339es
        -0x339fs
        -0x3391s
        -0x339as
        -0x4f5s
        -0x4d8s
        -0x4e0s
        -0x4d8s
        -0x499s
        -0x4d5s
        -0x4d8s
        -0x4das
        -0x4dds
        -0x4des
        -0x4dds
        -0x499s
        -0x4dfs
        -0x4cbs
        -0x4d8s
        -0x4d6s
        -0x499s
        -0x4dds
        -0x4cbs
        -0x4das
        -0x4d0s
        -0x4das
        -0x4dbs
        -0x4d5s
        -0x4des
        -0x499s
        -0x4cbs
        -0x4des
        -0x4ccs
        -0x4d8s
        -0x4ces
        -0x4cbs
        -0x4dcs
        -0x4des
        -0x28bas
        -0x289fs
        -0x2897s
        -0x2894s
        -0x289bs
        -0x289cs
        -0x28e0s
        -0x288cs
        -0x2891s
        -0x28e0s
        -0x2894s
        -0x2891s
        -0x289fs
        -0x289cs
        -0x28e0s
        -0x2894s
        -0x2891s
        -0x2899s
        -0x2891s
        -0x28e0s
        -0x289as
        -0x288es
        -0x2891s
        -0x2893s
        -0x28e0s
        -0x289cs
        -0x288es
        -0x289fs
        -0x2889s
        -0x289fs
        -0x289es
        -0x2894s
        -0x289bs
        -0x28c6s
        -0x28e0s
        -0x221bs
        -0x223as
        -0x2232s
        -0x223as
        -0x2277s
        -0x223bs
        -0x223as
        -0x2238s
        -0x2233s
        -0x2234s
        -0x2233s
        -0x2277s
        -0x2231s
        -0x2225s
        -0x223as
        -0x223cs
        -0x2277s
        -0x2238s
        -0x2226s
        -0x2226s
        -0x2234s
        -0x2223s
        -0x2226s
        -0x226ds
        -0x2277s
        -0x25e8s
        -0x25c1s
        -0x25c9s
        -0x25ces
        -0x25c5s
        -0x25c6s
        -0x2582s
        -0x25d6s
        -0x25cfs
        -0x2582s
        -0x25ces
        -0x25cfs
        -0x25c1s
        -0x25c6s
        -0x2582s
        -0x25ces
        -0x25cfs
        -0x25c7s
        -0x25cfs
        -0x2582s
        -0x25c8s
        -0x25d4s
        -0x25cfs
        -0x25cds
        -0x2582s
        -0x25c1s
        -0x25d3s
        -0x25d3s
        -0x25c5s
        -0x25d6s
        -0x2582s
        -0x25d2s
        -0x25c1s
        -0x25d6s
        -0x25cas
        -0x2582s
        -0x39fcs
        -0x39e2s
        -0x3b72s
        -0x3b58s
        -0x3b4es
        -0x3b4bs
        -0x3b44s
        -0x3b05s
        -0x3b43s
        -0x3b46s
        -0x3b49s
        -0x3b49s
        -0x3b47s
        -0x3b46s
        -0x3b48s
        -0x3b50s
        -0x3b05s
        -0x3b58s
        -0x3b5es
        -0x3b58s
        -0x3b51s
        -0x3b42s
        -0x3b4as
        -0x3b05s
        -0x3b4es
        -0x3b48s
        -0x3b4cs
        -0x3b4bs
        -0x3b05s
        -0x3b43s
        -0x3b4cs
        -0x3b57s
        -0x3b05s
        -0x3b49s
        -0x3b4cs
        -0x3b44s
        -0x3b4cs
        -0x3dfbs
        -0x3dd4s
        -0x3ddfs
        -0x3df3s
        -0x3dd1s
        -0x3ddcs
        -0x3dcds
        -0x1c9es
        -0x25ces
        -0x25a9s
        -0x25a9s
        -0x25a9s
        -0x25a9s
        -0x25a9s
        -0x25a9s
        -0x3fas
        -0x3ebs
        -0x3ebs
        -0x3ebs
        -0x3ebs
        -0x3ebs
        -0x3ebs
        -0x2e16s
        -0x2e38s
        -0x2e3ds
        -0x2e3ds
        -0x2e3es
        -0x2e3ds
        -0x2e79s
        -0x2e3bs
        -0x2e22s
        -0x2e79s
        -0x2e1es
        -0x2e35s
        -0x2e3as
        -0x2e16s
        -0x2e38s
        -0x2e3ds
        -0x2e2cs
        -0x73s
        -0x14s
        -0x14s
        -0x14s
        -0x14s
        -0x14s
        -0x14s
        -0x386cs
        -0x3880s
        -0x387es
        -0x3880s
        -0x387es
        -0x3880s
        -0x387es
        -0x20bes
        -0x20ads
        -0x20a6s
        -0x20ads
        -0x20afs
        -0x20bcs
        -0x20a9s
        -0x20a5s
        -0x2097s
        -0x20a1s
        -0x20abs
        -0x20a7s
        -0x20a8s
        -0x2efds
        -0x2eces
        -0x2ec5s
        -0x2eces
        -0x2ed0s
        -0x2edbs
        -0x2ecas
        -0x2ec6s
        -0x758s
        -0x751s
        -0x74es
        -0x74bs
        -0x760s
        -0x75as
        -0x74ds
        -0x760s
        -0x754s
        -0x762s
        -0x758s
        -0x75es
        -0x752s
        -0x751s
        -0x4fs
        -0x6as
        -0x75s
        -0x74s
        -0x67s
        -0x61s
        -0x76s
        -0x67s
        -0x6bs
        -0x24ccs
        -0x24des
        -0x24c8s
        -0x24c7s
        -0x24c8s
        -0x24d1s
        -0x24d8s
        -0x24ees
        -0x24dcs
        -0x24d2s
        -0x24des
        -0x24dds
        -0x580s
        -0x54as
        -0x554s
        -0x573s
        -0x554s
        -0x545s
        -0x544s
        -0x22c2s
        -0x22e4s
        -0x22e9s
        -0x22ads
        -0x22cfs
        -0x22f6s
        -0x22ads
        -0x22c5s
        -0x22eas
        -0x22e2s
        -0x22ees
        -0x22e3s
        -0x22f9s
        -0x22ads
        -0x22e0s
        -0x22e6s
        -0x22e3s
        -0x22ecs
        -0x22e5s
        -0x253ds
        -0x2530s
        -0x2530s
        -0x2527s
        -0x252as
        -0x2528s
        -0x2528s
        -0x327es
        -0x3255s
        -0x3258s
        -0x3258s
        -0x3255s
        -0x324ds
        -0x321cs
        -0x325bs
        -0x3256s
        -0x3260s
        -0x321cs
        -0x3269s
        -0x3254s
        -0x325bs
        -0x324as
        -0x325fs
        -0x321cs
        -0x3275s
        -0x324fs
        -0x324as
        -0x321cs
        -0x3277s
        -0x3255s
        -0x3260s
        -0x321cs
        -0x326ds
        -0x3253s
        -0x3250s
        -0x3254s
        -0x321cs
        -0x3243s
        -0x3255s
        -0x324fs
        -0x324as
        -0x321cs
        -0x325es
        -0x324as
        -0x3253s
        -0x325fs
        -0x3256s
        -0x3260s
        -0x3249s
        -0x3216s
        -0x321cs
        -0x3243s
        -0x3255s
        -0x324fs
        -0x321cs
        -0x3259s
        -0x325bs
        -0x3256s
        -0x321cs
        -0x325es
        -0x3253s
        -0x3256s
        -0x3260s
        -0x321cs
        -0x3257s
        -0x325bs
        -0x3256s
        -0x3243s
        -0x321cs
        -0x325ds
        -0x325fs
        -0x3256s
        -0x324fs
        -0x3253s
        -0x3256s
        -0x325fs
        -0x321cs
        -0x3277s
        -0x3255s
        -0x3260s
        -0x3249s
        -0x321cs
        -0x324ds
        -0x3253s
        -0x3250s
        -0x3254s
        -0x3255s
        -0x324fs
        -0x3250s
        -0x321cs
        -0x325bs
        -0x3256s
        -0x3243s
        -0x321cs
        -0x324es
        -0x3253s
        -0x324as
        -0x324fs
        -0x3249s
        -0x3216s
        -0x321cs
        -0x3270s
        -0x3254s
        -0x325bs
        -0x3256s
        -0x3251s
        -0x321cs
        -0x3243s
        -0x3255s
        -0x324fs
        -0x321cs
        -0x325es
        -0x3255s
        -0x324as
        -0x321cs
        -0x3260s
        -0x3255s
        -0x324ds
        -0x3256s
        -0x3258s
        -0x3255s
        -0x325bs
        -0x3260s
        -0x3253s
        -0x3256s
        -0x325ds
        -0x321cs
        -0x3250s
        -0x3254s
        -0x3253s
        -0x3249s
        -0x321cs
        -0x3257s
        -0x3255s
        -0x3260s
        -0x321cs
        -0x325bs
        -0x324cs
        -0x324cs
        -0x3216s
        -0x321cs
        -0x327bs
        -0x3256s
        -0x3260s
        -0x321cs
        -0x325bs
        -0x3258s
        -0x3249s
        -0x3255s
        -0x321cs
        -0x3260s
        -0x3255s
        -0x3256s
        -0x321ds
        -0x3250s
        -0x321cs
        -0x325es
        -0x3255s
        -0x324as
        -0x325ds
        -0x3255s
        -0x3250s
        -0x321cs
        -0x3249s
        -0x3254s
        -0x325bs
        -0x324as
        -0x325fs
        -0x321cs
        -0x3255s
        -0x324fs
        -0x324as
        -0x321cs
        -0x3257s
        -0x3255s
        -0x3260s
        -0x321cs
        -0x324ds
        -0x3253s
        -0x3250s
        -0x3254s
        -0x321cs
        -0x3243s
        -0x3255s
        -0x324fs
        -0x324as
        -0x321cs
        -0x325es
        -0x324as
        -0x3253s
        -0x325fs
        -0x3256s
        -0x3260s
        -0x3249s
        -0x3216s
        -0x321cs
        0x15f9s
        0x1189s
        -0x2948s
        -0x2928s
        -0x2928s
        -0x2928s
        -0x2928s
        -0x2928s
        -0x2928s
        -0x2384s
        -0x2395s
        -0x2393s
        -0x2395s
        -0x2393s
        -0x2395s
        -0x2393s
        -0x32fas
        -0x32d3s
        -0x32d4s
        -0x329bs
        -0x32cas
        -0x329es
        -0x32efs
        -0x32d6s
        -0x32d3s
        -0x32cbs
        -0x329es
        -0x32fds
        -0x32dbs
        -0x32dds
        -0x32d5s
        -0x32d4s
        -0x2d24s
        -0x2d2fs
        -0x2d35s
        -0x2d2bs
        -0x2d2fs
        -0x2d35s
        -0x2d35s
        -0x3247s
        -0x3244s
        -0x3246s
        -0x3243s
        -0x322ds
        -0x3243s
        -0x3244s
        -0x325cs
        -0x3c50s
        -0x3c5ds
        -0x3c5ds
        -0x3c56s
        -0x3c56s
        -0x3c10s
        -0x3c10s
        -0x3624s
        -0x3615s
        -0x3615s
        -0x360as
        -0x3615s
        -0x3647s
        -0x3616s
        -0x360fs
        -0x360as
        -0x3612s
        -0x3610s
        -0x3609s
        -0x3602s
        -0x3647s
        -0x3603s
        -0x3610s
        -0x3608s
        -0x360bs
        -0x360as
        -0x3602s
        -0x365ds
        -0x3647s
        0x761s
        0x76as
        0x76bs
        0x771s
        0x75as
        0x776s
        0x76ds
        0x76as
        0x772s
        0x75as
        0x761s
        0x76cs
        0x764s
        0x769s
        0x76as
        0x762s
        -0x6765s
        -0x674es
        -0x6741s
        -0x676ds
        -0x674fs
        -0x6746s
        -0x6753s
        -0x6772s
        -0x6754s
        -0x6745s
        -0x6748s
        -0x6753s
        0x5c73s
        0x5c45s
        0x5c43s
        0x5c44s
        0x5c5fs
        0x5c5ds
        0x5c64s
        0x5c55s
        0x5c5cs
        0x5c55s
        0x5c57s
        0x5c42s
        0x5c51s
        0x5c5ds
        0x5c74s
        0x5c59s
        0x5c51s
        0x5c5cs
        0x5c5fs
        0x5c57s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    move-object/from16 v0, p0

    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createImprovedSocialIconColumn(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IZ)Landroid/widget/LinearLayout;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableName"    # Ljava/lang/String;
    .param p2, "assetPaths"    # [Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "iconSizeDP"    # I
    .param p5, "isDarkMode"    # Z

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move/from16 p0, p4

    move/from16 p1, p5

    .line 586
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, p0

    const p3, 0x0

    const p4, 0xf

    const p5, -0x3f57

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v6

    const p3, 0xf

    const p4, 0x23

    const p5, -0x10da

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v8, v0

    .line 587
    .local v8, "column":Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 588
    const/16 v10, 0x11

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 591
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    .line 592
    .local v11, "icon":Landroid/widget/ImageView;
    const/4 v12, 0x0

    .line 596
    .local v12, "iconLoaded":Z
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const p3, 0x23

    const p4, 0x2b

    const p5, -0x9e6

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v2, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 597
    .local v0, "iconResId":I
    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    const/4 v12, 0x1

    .line 600
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const p3, 0x2b

    const p4, 0x49

    const p5, -0x1cfe

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .end local v0    # "iconResId":I
    :cond_0
    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const p3, 0x49

    const p4, 0x59

    const p5, -0x3848

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v12, :cond_2

    .line 608
    array-length v14, v3

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_2

    aget-object v9, v3, v15

    .line 610
    .local v9, "assetPath":Ljava/lang/String;
    :try_start_1
    invoke-static {v1, v9}, Lbin/mt/signature/KillerApplicationmt;->getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 611
    .local v0, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 613
    const/4 v12, 0x1

    .line 614
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const p3, 0x59

    const p4, 0x6e

    const p5, -0x6f7

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 615
    goto :goto_3

    .line 619
    .end local v0    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_1
    goto :goto_2

    .line 617
    :catch_1
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const p3, 0x6e

    const p4, 0x7f

    const p5, -0xbaf

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const p3, 0x7f

    const p4, 0x81

    const p5, -0x566

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "assetPath":Ljava/lang/String;
    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x1

    const/16 v10, 0x11

    goto :goto_1

    .line 624
    :cond_2
    :goto_3
    if-nez v12, :cond_6

    .line 625
    const p3, 0x81

    const p4, 0x89

    const p5, -0x178b

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    const v0, 0x1080029

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 627
    :cond_3
    const p3, 0x89

    const p4, 0x92

    const p5, -0x1ef2

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 628
    const v0, 0x108003f

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 629
    :cond_4
    const p3, 0x92

    const p4, 0x99

    const p5, -0x1e73

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 630
    const v0, 0x1080024

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 632
    :cond_5
    const v0, 0x1080052

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 634
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x99

    const p4, 0xb8

    const p5, -0xf94

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_6
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v5}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v1, v5}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 639
    .local v0, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x4

    invoke-static {v1, v6}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v7, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 640
    const/16 v6, 0x11

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 641
    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 645
    .local v6, "text":Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 647
    if-eqz p1, :cond_7

    .line 648
    const p3, 0xb8

    const p4, 0xbf

    const p5, -0x516

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 650
    :cond_7
    const p3, 0xbf

    const p4, 0xc6

    const p5, -0x110f

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 652
    :goto_5
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 654
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 655
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 658
    new-instance v7, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda6;

    invoke-direct {v7, v11, v1}, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda6;-><init>(Landroid/widget/ImageView;Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 694
    const/4 v7, 0x1

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 695
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 697
    return-object v8
.end method

.method private static createTextViewButton(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/widget/TextView;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textColor"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "isOutlined"    # Z
    .param p5, "isDarkMode"    # Z

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 p0, p4

    move/from16 p1, p5

    .line 529
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 530
    .local v0, "button":Landroid/widget/TextView;
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 532
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 533
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 534
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 535
    const/16 v1, 0x14

    invoke-static {v10, v1}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {v10, v4}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v10, v1}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v10, v4}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 538
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 541
    .local v3, "states":Landroid/graphics/drawable/StateListDrawable;
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 542
    .local v4, "normalShape":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v10, v1}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 543
    const p3, 0xc6

    const p4, 0xcd

    const p5, 0x4f61

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v5

    const p3, 0xcd

    const p4, 0xd4

    const p5, 0x6a7a

    invoke-static/range {p3 .. p5}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_1

    .line 545
    if-eqz p1, :cond_0

    move-object v7, v5

    goto :goto_0

    :cond_0
    move-object v7, v6

    .line 546
    .local v7, "strokeColor":Ljava/lang/String;
    :goto_0
    invoke-static {v10, v2}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 547
    invoke-virtual {v4, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 548
    .end local v7    # "strokeColor":Ljava/lang/String;
    goto :goto_1

    .line 549
    :cond_1
    invoke-virtual {v4, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 553
    :goto_1
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 554
    .local v7, "pressedShape":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v10, v1}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 555
    const v1, 0x3f666666    # 0.9f

    if-eqz p0, :cond_3

    .line 557
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v6

    .line 558
    .local v5, "strokeColor":Ljava/lang/String;
    :goto_2
    invoke-static {v10, v2}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 560
    invoke-static {v13, v1}, Lbin/mt/signature/KillerApplicationmt;->getDarkerColor(IF)I

    move-result v1

    .line 561
    .local v1, "darkerColor":I
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 562
    .end local v1    # "darkerColor":I
    .end local v5    # "strokeColor":Ljava/lang/String;
    goto :goto_3

    .line 564
    :cond_3
    invoke-static {v13, v1}, Lbin/mt/signature/KillerApplicationmt;->getDarkerColor(IF)I

    move-result v1

    .line 565
    .restart local v1    # "darkerColor":I
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 569
    .end local v1    # "darkerColor":I
    :goto_3
    new-array v1, v2, [I

    const v5, 0x10100a7

    const/4 v6, 0x0

    aput v5, v1, v6

    invoke-virtual {v3, v1, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 570
    new-array v1, v6, [I

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 572
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 573
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 576
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 577
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 579
    return-object v0
.end method

.method private static dpToPx(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    move-object/from16 v2, p0

    move/from16 v3, p1

    .line 756
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 757
    .local v0, "density":F
    int-to-float v1, v3

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private static getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 702
    const v10, 0xd4

    const p0, 0xf0

    const p1, 0x153b

    invoke-static/range {v10 .. v12}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v0

    const v10, 0xf0

    const p0, 0x104

    const p1, 0x6b5

    invoke-static/range {v10 .. v12}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 703
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 705
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 706
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    if-eqz v3, :cond_0

    .line 713
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 716
    goto :goto_0

    .line 714
    :catch_0
    move-exception v5

    .line 715
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v4

    .line 711
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 707
    :catch_1
    move-exception v4

    .line 708
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x104

    const p0, 0x125

    const p1, 0x1bc1

    invoke-static/range {v10 .. v12}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v10, 0x125

    const p0, 0x128

    const p1, 0x2247

    invoke-static/range {v10 .. v12}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 709
    nop

    .line 711
    if-eqz v3, :cond_1

    .line 713
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 716
    goto :goto_1

    .line 714
    :catch_2
    move-exception v5

    .line 715
    .restart local v5    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 711
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v3, :cond_2

    .line 713
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 716
    goto :goto_3

    .line 714
    :catch_3
    move-exception v5

    .line 715
    .restart local v5    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v4
.end method

.method private static getDarkerColor(IF)I
    .locals 11
    .param p0, "color"    # I
    .param p1, "factor"    # F

    move/from16 v7, p0

    move/from16 v8, p1

    .line 723
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 724
    .local v0, "alpha":I
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    .line 725
    .local v1, "red":I
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    .line 726
    .local v2, "green":I
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    .line 727
    .local v3, "blue":I
    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v5, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public static handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    move-object/from16 v6, p0

    .line 134
    const v8, 0x128

    const v9, 0x13c

    const p0, 0x295d

    invoke-static/range {v8 .. v10}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Lbin/mt/signature/KillerApplicationmt;->currentDialogRef:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 135
    .local v1, "currentDialog":Landroid/app/Dialog;
    :goto_0
    sget-object v3, Lbin/mt/signature/KillerApplicationmt;->currentContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 137
    .local v2, "context":Landroid/content/Context;
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    .line 139
    :try_start_1
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    goto :goto_1

    .line 140
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x13c

    const v9, 0x155

    const p0, 0x31be

    invoke-static/range {v8 .. v10}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    invoke-static {v2}, Lbin/mt/signature/KillerApplicationmt;->show(Landroid/content/Context;)V

    goto :goto_2

    .line 145
    :cond_2
    sget-object v3, Lbin/mt/signature/KillerApplicationmt;->currentDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_3

    .line 146
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->clear()V

    .line 147
    sget-object v3, Lbin/mt/signature/KillerApplicationmt;->currentContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_3

    .line 148
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    .end local v1    # "currentDialog":Landroid/app/Dialog;
    .end local v2    # "context":Landroid/content/Context;
    :cond_3
    :goto_2
    goto :goto_3

    .line 151
    :catch_1
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x155

    const v9, 0x17a

    const p0, 0x3469

    invoke-static/range {v8 .. v10}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method static synthetic lambda$createImprovedSocialIconColumn$6(Landroid/widget/ImageView;Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20
    .param p0, "icon"    # Landroid/widget/ImageView;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    .line 660
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getAction()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x64

    const/4 v6, 0x3

    const/4 v7, 0x0

    const p1, 0x17a

    const p2, 0x186

    const p3, 0xc7e

    invoke-static/range {p1 .. p3}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v8

    const p1, 0x186

    const p2, 0x18c

    const p3, 0x1058

    invoke-static/range {p1 .. p3}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v9

    const p1, 0x18c

    const p2, 0x192

    const p3, 0x1f50

    invoke-static/range {p1 .. p3}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v10

    const v11, 0x3f666666    # 0.9f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/4 v14, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 677
    :pswitch_1
    :try_start_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 678
    .local v0, "animatorSetUp":Landroid/animation/AnimatorSet;
    new-array v15, v14, [F

    aput v11, v15, v3

    aput v12, v15, v13

    invoke-static {v1, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 679
    .local v10, "scaleUpX":Landroid/animation/ObjectAnimator;
    new-array v15, v14, [F

    aput v11, v15, v3

    aput v12, v15, v13

    invoke-static {v1, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 680
    .local v9, "scaleUpY":Landroid/animation/ObjectAnimator;
    new-array v11, v14, [F

    invoke-static {v2, v14}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v11, v3

    aput v7, v11, v13

    invoke-static {v1, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 682
    .local v7, "translationUp":Landroid/animation/ObjectAnimator;
    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v10, v6, v3

    aput-object v9, v6, v13

    aput-object v7, v6, v14

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 683
    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 684
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 685
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 663
    .end local v0    # "animatorSetUp":Landroid/animation/AnimatorSet;
    .end local v7    # "translationUp":Landroid/animation/ObjectAnimator;
    .end local v9    # "scaleUpY":Landroid/animation/ObjectAnimator;
    .end local v10    # "scaleUpX":Landroid/animation/ObjectAnimator;
    :pswitch_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 664
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v15, v14, [F

    aput v12, v15, v3

    aput v11, v15, v13

    invoke-static {v1, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 665
    .local v10, "scaleDownX":Landroid/animation/ObjectAnimator;
    new-array v15, v14, [F

    aput v12, v15, v3

    aput v11, v15, v13

    invoke-static {v1, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 666
    .local v9, "scaleDownY":Landroid/animation/ObjectAnimator;
    new-array v11, v14, [F

    aput v7, v11, v3

    invoke-static {v2, v14}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v11, v13

    invoke-static {v1, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 668
    .local v7, "translationDown":Landroid/animation/ObjectAnimator;
    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v10, v6, v3

    aput-object v9, v6, v13

    aput-object v7, v6, v14

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 669
    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 670
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 671
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 672
    nop

    .line 690
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v7    # "translationDown":Landroid/animation/ObjectAnimator;
    .end local v9    # "scaleDownY":Landroid/animation/ObjectAnimator;
    .end local v10    # "scaleDownX":Landroid/animation/ObjectAnimator;
    :goto_0
    goto :goto_1

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const p1, 0x192

    const p2, 0x1a3

    const p3, 0x191

    invoke-static/range {p1 .. p3}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const p1, 0x1a3

    const p2, 0x1b7

    const p3, 0x2328

    invoke-static/range {p1 .. p3}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$show$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 306
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const v6, 0x1b7

    const p0, 0x1d1

    const p1, -0x4a2a

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    const v6, 0x1d1

    const p0, 0x1ec

    const p1, -0x6a50

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 307
    .local v0, "telegram":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0    # "telegram":Landroid/content/Intent;
    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    const v6, 0x1ec

    const p0, 0x200

    const p1, -0x7837

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$show$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 324
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const v6, 0x200

    const p0, 0x21a

    const p1, -0x6462

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    const v6, 0x21a

    const p0, 0x24a

    const p1, -0x6574

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 325
    .local v0, "instagram":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v0    # "instagram":Landroid/content/Intent;
    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const v6, 0x24a

    const p0, 0x25f

    const p1, -0x7eee

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$show$2(Landroid/content/Context;Landroid/view/View;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 342
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const v6, 0x25f

    const p0, 0x279

    const p1, -0x629e

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    const v6, 0x279

    const p0, 0x2a8

    const p1, -0x4be3

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 343
    .local v0, "youtube":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v0    # "youtube":Landroid/content/Intent;
    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    const v6, 0x2a8

    const p0, 0x2bb

    const p1, -0x6241

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$show$3(Landroid/widget/CheckBox;Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 7
    .param p0, "dontShowAgain"    # Landroid/widget/CheckBox;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "v"    # Landroid/view/View;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 434
    :try_start_0
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x1

    invoke-static {v4, v0}, Lbin/mt/signature/KillerApplicationmt;->saveDontShowPreference(Landroid/content/Context;Z)V

    .line 437
    :cond_0
    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 440
    :cond_1
    sget-object v0, Lbin/mt/signature/KillerApplicationmt;->currentDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_2
    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const p1, 0x2bb

    const p2, 0x2d4

    const p3, -0x6292

    invoke-static/range {p1 .. p3}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const p1, 0x2d4

    const p2, 0x2e8

    const p3, -0x748e

    invoke-static/range {p1 .. p3}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$show$4(Landroid/widget/CheckBox;Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 7
    .param p0, "dontShowAgain"    # Landroid/widget/CheckBox;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "v"    # Landroid/view/View;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 460
    :try_start_0
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const/4 v0, 0x1

    invoke-static {v4, v0}, Lbin/mt/signature/KillerApplicationmt;->saveDontShowPreference(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 464
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const p1, 0x2e8

    const p2, 0x302

    const p3, -0x4ee6

    invoke-static/range {p1 .. p3}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    const p1, 0x302

    const p2, 0x32b

    const p3, -0x7385

    invoke-static/range {p1 .. p3}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 465
    .local v0, "telegram":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 468
    .end local v0    # "telegram":Landroid/content/Intent;
    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const p1, 0x32b

    const p2, 0x33f

    const p3, -0x7b2e

    invoke-static/range {p1 .. p3}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v4, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 470
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 473
    :cond_1
    sget-object v0, Lbin/mt/signature/KillerApplicationmt;->currentDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 478
    :cond_2
    goto :goto_1

    .line 476
    :catch_1
    move-exception v0

    .line 477
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const p1, 0x33f

    const p2, 0x358

    const p3, -0x7af9

    invoke-static/range {p1 .. p3}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const p1, 0x358

    const p2, 0x36c

    const p3, -0x4c90

    invoke-static/range {p1 .. p3}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method static synthetic lambda$show$5(Landroid/content/DialogInterface;)V
    .locals 5
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;

    move-object/from16 v1, p0

    .line 516
    sget-object v0, Lbin/mt/signature/KillerApplicationmt;->currentDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 519
    :cond_0
    return-void
.end method

.method public static resetDontShowDialog(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    move-object/from16 v4, p0

    .line 745
    :try_start_0
    const v6, 0x36c

    const v7, 0x378

    const p0, 0x5cbb

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 746
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 747
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const v6, 0x378

    const v7, 0x388

    const p0, 0x66cf

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 748
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x388

    const v7, 0x3a5

    const p0, 0x40ea

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v6, 0x3a5

    const v7, 0x3b9

    const p0, 0x466e

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static saveDontShowPreference(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dontShow"    # Z

    move-object/from16 v3, p0

    move/from16 v4, p1

    .line 733
    :try_start_0
    const v6, 0x3b9

    const p0, 0x3c5

    const p1, 0x6fb8

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 734
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 735
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const v6, 0x3c5

    const p0, 0x3d5

    const p1, 0x784b

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 736
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x3d5

    const p0, 0x3ef

    const p1, 0x7772

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v6, 0x3ef

    const p0, 0x403

    const p1, 0x75f6

    invoke-static/range {v6 .. v8}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static shouldShowDialog(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    move-object/from16 v3, p0

    .line 125
    const v5, 0x403

    const v6, 0x40f

    const p0, -0x5f41

    invoke-static/range {v5 .. v7}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    .local v0, "settings":Landroid/content/SharedPreferences;
    const v5, 0x40f

    const v6, 0x41f

    const p0, -0x7dba

    invoke-static/range {v5 .. v7}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static show(Landroid/content/Context;)V
    .locals 49
    .param p0, "context"    # Landroid/content/Context;

    move-object/from16 v45, p0

    .line 159
    move-object/from16 v7, v45

    const v47, 0x41f

    const v48, 0x433

    const p0, -0x34c

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v8

    :try_start_0
    invoke-static/range {v45 .. v45}, Lbin/mt/signature/KillerApplicationmt;->shouldShowDialog(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbin/mt/signature/KillerApplicationmt;->currentContextRef:Ljava/lang/ref/WeakReference;

    .line 167
    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v9, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 170
    .local v10, "isDarkMode":Z
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    .line 171
    .local v11, "dialog":Landroid/app/Dialog;
    invoke-virtual {v11, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 172
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbin/mt/signature/KillerApplicationmt;->currentDialogRef:Ljava/lang/ref/WeakReference;

    .line 178
    invoke-virtual {v11, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 179
    invoke-virtual {v11, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 182
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v12, v0

    .line 183
    .local v12, "displayMetrics":Landroid/util/DisplayMetrics;
    const v47, 0x433

    const v48, 0x439

    const p0, -0x2e83

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    move-object v13, v0

    .line 184
    .local v13, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 185
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move v14, v0

    .line 188
    .local v14, "screenWidth":I
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 189
    .local v15, "mainLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    const/16 v6, 0x18

    invoke-static {v7, v6}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x14

    invoke-static {v7, v1}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v7, v6}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v7, v6}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v15, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 193
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v5, v0

    .line 194
    .local v5, "shape":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v7, v1}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 197
    const v47, 0x439

    const v48, 0x440

    const p0, -0x289c

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v16

    const/4 v4, -0x1

    if-eqz v10, :cond_2

    .line 198
    :try_start_1
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    .line 200
    :cond_2
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 203
    :goto_1
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 206
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    .line 207
    .local v3, "headerRow":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 208
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 211
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-object/from16 v17, v0

    .line 212
    .local v17, "logoImage":Landroid/widget/ImageView;
    const/16 v18, 0x0

    .line 216
    .local v18, "logoLoaded":Z
    :try_start_2
    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v47, 0x440

    const v48, 0x449

    const p0, -0x3b1c

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v6

    const v47, 0x449

    const v48, 0x451

    const p0, -0x33fd

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 217
    .local v0, "logoResId":I
    if-eqz v0, :cond_3

    .line 218
    move-object/from16 v6, v17

    .end local v17    # "logoImage":Landroid/widget/ImageView;
    .local v6, "logoImage":Landroid/widget/ImageView;
    :try_start_3
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    const/16 v18, 0x1

    .line 220
    const v47, 0x451

    const v48, 0x473

    const p0, -0x4b9

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 222
    .end local v0    # "logoResId":I
    :catch_0
    move-exception v0

    goto :goto_3

    .line 217
    .end local v6    # "logoImage":Landroid/widget/ImageView;
    .restart local v0    # "logoResId":I
    .restart local v17    # "logoImage":Landroid/widget/ImageView;
    :cond_3
    move-object/from16 v6, v17

    .line 224
    .end local v0    # "logoResId":I
    .end local v17    # "logoImage":Landroid/widget/ImageView;
    .restart local v6    # "logoImage":Landroid/widget/ImageView;
    :goto_2
    goto :goto_4

    .line 222
    .end local v6    # "logoImage":Landroid/widget/ImageView;
    .restart local v17    # "logoImage":Landroid/widget/ImageView;
    :catch_1
    move-exception v0

    move-object/from16 v6, v17

    .line 223
    .end local v17    # "logoImage":Landroid/widget/ImageView;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "logoImage":Landroid/widget/ImageView;
    :goto_3
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v47, 0x473

    const v48, 0x496

    const p0, -0x2900

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    if-nez v18, :cond_5

    .line 228
    sget-object v2, Lbin/mt/signature/KillerApplicationmt$Config;->LOGO_ICON_PATHS:[Ljava/lang/String;

    array-length v4, v2

    :goto_5
    if-ge v9, v4, :cond_5

    aget-object v0, v2, v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v22, v0

    .line 230
    .local v22, "assetPath":Ljava/lang/String;
    move-object/from16 v1, v22

    .end local v22    # "assetPath":Ljava/lang/String;
    .local v1, "assetPath":Ljava/lang/String;
    :try_start_5
    invoke-static {v7, v1}, Lbin/mt/signature/KillerApplicationmt;->getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    .local v0, "logoBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 232
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 233
    const/16 v18, 0x1

    .line 234
    move-object/from16 v22, v0

    .end local v0    # "logoBitmap":Landroid/graphics/Bitmap;
    .local v22, "logoBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v24, v2

    :try_start_6
    const v47, 0x496

    const v48, 0x4af

    const p0, -0x2257

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 235
    goto :goto_8

    .line 237
    .end local v22    # "logoBitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v0

    goto :goto_6

    .line 231
    .restart local v0    # "logoBitmap":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v22, v0

    move-object/from16 v24, v2

    .line 239
    .end local v0    # "logoBitmap":Landroid/graphics/Bitmap;
    move/from16 v22, v4

    goto :goto_7

    .line 237
    :catch_3
    move-exception v0

    move-object/from16 v24, v2

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v4

    const v47, 0x4af

    const v48, 0x4d3

    const p0, -0x25a2

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v47, 0x4d3

    const v48, 0x4d5

    const p0, -0x39c2

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "assetPath":Ljava/lang/String;
    :goto_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v22

    move-object/from16 v2, v24

    const/16 v1, 0x10

    goto/16 :goto_5

    .line 244
    :cond_5
    :goto_8
    if-nez v18, :cond_6

    .line 245
    const v0, 0x1080057

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    const v47, 0x4d5

    const v48, 0x4f8

    const p0, -0x3b25

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_6
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x38

    invoke-static {v7, v1}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v7, v1}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 251
    .local v0, "logoParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x10

    invoke-static {v7, v1}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 252
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v9, v1

    .line 256
    .local v9, "titleSection":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 259
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v4, v1

    .line 260
    .local v4, "titleText":Landroid/widget/TextView;
    const v47, 0x4f8

    const v48, 0x500

    const p0, -0x3dc0

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 262
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 264
    if-eqz v10, :cond_7

    .line 265
    const v47, 0x500

    const v48, 0x507

    const p0, -0x25ef

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 267
    :cond_7
    const v47, 0x507

    const v48, 0x50e

    const p0, -0x3db

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    :goto_9
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    .line 272
    .local v2, "subtitleText":Landroid/widget/TextView;
    const v47, 0x50e

    const v48, 0x51f

    const p0, -0x2e59

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 274
    if-eqz v10, :cond_8

    .line 275
    const v47, 0x51f

    const v48, 0x526

    const p0, -0x52

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a

    .line 277
    :cond_8
    const v47, 0x526

    const v48, 0x52d

    const p0, -0x3849

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    :goto_a
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 288
    .local v1, "socialMediaRow":Landroid/widget/LinearLayout;
    move-object/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "subtitleText":Landroid/widget/TextView;
    .local v21, "subtitleText":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 289
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 290
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v24, v5

    .end local v5    # "shape":Landroid/graphics/drawable/GradientDrawable;
    .local v24, "shape":Landroid/graphics/drawable/GradientDrawable;
    const/4 v5, -0x2

    move-object/from16 v25, v4

    const/4 v4, -0x1

    .end local v4    # "titleText":Landroid/widget/TextView;
    .local v25, "titleText":Landroid/widget/TextView;
    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 292
    .local v2, "socialRowParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x18

    invoke-static {v7, v5}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 293
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    const v47, 0x52d

    const v48, 0x53a

    const p0, -0x20ca

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lbin/mt/signature/KillerApplicationmt$Config;->TELEGRAM_ICON_PATHS:[Ljava/lang/String;

    const v47, 0x53a

    const v48, 0x542

    const p0, -0x2ea9

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x20

    move-object/from16 v29, v0

    move-object v0, v1

    move-object/from16 v22, v9

    const/high16 v9, 0x41900000    # 18.0f

    .end local v1    # "socialMediaRow":Landroid/widget/LinearLayout;
    .end local v9    # "titleSection":Landroid/widget/LinearLayout;
    .local v0, "socialMediaRow":Landroid/widget/LinearLayout;
    .local v22, "titleSection":Landroid/widget/LinearLayout;
    .local v29, "logoParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v1, v45

    move-object/from16 v23, v2

    .end local v2    # "socialRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v23, "socialRowParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v4

    move-object v4, v3

    .end local v3    # "headerRow":Landroid/widget/LinearLayout;
    .local v4, "headerRow":Landroid/widget/LinearLayout;
    move-object v3, v5

    move-object v5, v4

    move-object/from16 v19, v25

    .end local v4    # "headerRow":Landroid/widget/LinearLayout;
    .end local v25    # "titleText":Landroid/widget/TextView;
    .local v5, "headerRow":Landroid/widget/LinearLayout;
    .local v19, "titleText":Landroid/widget/TextView;
    move-object/from16 v4, v27

    move-object/from16 v32, v5

    move-object/from16 v20, v24

    const/4 v9, -0x2

    const/16 v24, 0x18

    .end local v5    # "headerRow":Landroid/widget/LinearLayout;
    .end local v24    # "shape":Landroid/graphics/drawable/GradientDrawable;
    .local v20, "shape":Landroid/graphics/drawable/GradientDrawable;
    .local v32, "headerRow":Landroid/widget/LinearLayout;
    move/from16 v5, v28

    move-object/from16 v24, v6

    .end local v6    # "logoImage":Landroid/widget/ImageView;
    .local v24, "logoImage":Landroid/widget/ImageView;
    move v6, v10

    invoke-static/range {v1 .. v6}, Lbin/mt/signature/KillerApplicationmt;->createImprovedSocialIconColumn(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IZ)Landroid/widget/LinearLayout;

    move-result-object v1

    move-object v6, v1

    .line 304
    .local v6, "telegramColumn":Landroid/widget/LinearLayout;
    new-instance v1, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda0;

    invoke-direct {v1, v7}, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v47, 0x542

    const v48, 0x550

    const p0, -0x73f

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lbin/mt/signature/KillerApplicationmt$Config;->INSTAGRAM_ICON_PATHS:[Ljava/lang/String;

    const v47, 0x550

    const v48, 0x559

    const p0, -0x8

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    move-object/from16 v1, v45

    move-object/from16 v34, v6

    .end local v6    # "telegramColumn":Landroid/widget/LinearLayout;
    .local v34, "telegramColumn":Landroid/widget/LinearLayout;
    move v6, v10

    invoke-static/range {v1 .. v6}, Lbin/mt/signature/KillerApplicationmt;->createImprovedSocialIconColumn(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IZ)Landroid/widget/LinearLayout;

    move-result-object v1

    move-object v6, v1

    .line 322
    .local v6, "instagramColumn":Landroid/widget/LinearLayout;
    new-instance v1, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda1;

    invoke-direct {v1, v7}, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    const v47, 0x559

    const v48, 0x565

    const p0, -0x24b3

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lbin/mt/signature/KillerApplicationmt$Config;->YOUTUBE_ICON_PATHS:[Ljava/lang/String;

    const v47, 0x565

    const v48, 0x56c

    const p0, -0x527

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    move-object/from16 v1, v45

    move-object/from16 v35, v6

    .end local v6    # "instagramColumn":Landroid/widget/LinearLayout;
    .local v35, "instagramColumn":Landroid/widget/LinearLayout;
    move v6, v10

    invoke-static/range {v1 .. v6}, Lbin/mt/signature/KillerApplicationmt;->createImprovedSocialIconColumn(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IZ)Landroid/widget/LinearLayout;

    move-result-object v1

    move-object v6, v1

    .line 340
    .local v6, "youtubeColumn":Landroid/widget/LinearLayout;
    new-instance v1, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda2;

    invoke-direct {v1, v7}, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v1, v2, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v4, v1

    .line 352
    .local v4, "socialColumnParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v3, v34

    .end local v34    # "telegramColumn":Landroid/widget/LinearLayout;
    .local v3, "telegramColumn":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    move-object/from16 v2, v35

    .end local v35    # "instagramColumn":Landroid/widget/LinearLayout;
    .local v2, "instagramColumn":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 361
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 362
    .local v1, "readMoreText":Landroid/widget/TextView;
    const v47, 0x56c

    const v48, 0x57f

    const p0, -0x228d

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 364
    const v47, 0x57f

    const v48, 0x586

    const p0, -0x2520

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 367
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 369
    .local v5, "readMoreParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v35, v2

    const/16 v9, 0x18

    .end local v2    # "instagramColumn":Landroid/widget/LinearLayout;
    .restart local v35    # "instagramColumn":Landroid/widget/LinearLayout;
    invoke-static {v7, v9}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 370
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v9, v2

    .line 374
    .local v9, "descriptionText":Landroid/widget/TextView;
    const v47, 0x586

    const v48, 0x645

    const p0, -0x323c

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 376
    const v47, 0x645

    const v48, 0x64c

    const p0, -0x2965

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v27

    const v47, 0x64c

    const v48, 0x653

    const p0, -0x23a1

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v28

    if-eqz v10, :cond_9

    .line 377
    :try_start_8
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b

    .line 379
    :cond_9
    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    :goto_b
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v36, v1

    move-object/from16 v31, v3

    const/4 v1, -0x1

    const/4 v3, -0x2

    .end local v1    # "readMoreText":Landroid/widget/TextView;
    .end local v3    # "telegramColumn":Landroid/widget/LinearLayout;
    .local v31, "telegramColumn":Landroid/widget/LinearLayout;
    .local v36, "readMoreText":Landroid/widget/TextView;
    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v2

    .line 383
    .local v3, "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x8

    invoke-static {v7, v2}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 384
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    .line 388
    .local v2, "checkboxRow":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 389
    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 390
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v30, v3

    const/4 v3, -0x2

    .end local v3    # "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v30, "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v1

    .line 392
    .local v3, "checkboxRowParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v39, v4

    const/16 v1, 0x18

    .end local v4    # "socialColumnParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v39, "socialColumnParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v7, v1}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 393
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object v4, v1

    .line 396
    .local v4, "dontShowAgain":Landroid/widget/CheckBox;
    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setScaleX(F)V

    .line 397
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setScaleY(F)V

    .line 400
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 401
    .local v1, "checkboxLabel":Landroid/widget/TextView;
    move-object/from16 v40, v3

    .end local v3    # "checkboxRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v40, "checkboxRowParams":Landroid/widget/LinearLayout$LayoutParams;
    const v47, 0x653

    const v48, 0x663

    const p0, -0x32be

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 403
    if-eqz v10, :cond_a

    .line 404
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c

    .line 406
    :cond_a
    invoke-static/range {v28 .. v28}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    :goto_c
    move-object/from16 v27, v5

    const/16 v3, 0x8

    .end local v5    # "readMoreParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v27, "readMoreParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v7, v3}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 410
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v5, v3

    .line 415
    .local v5, "buttonRow":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 416
    const/4 v3, 0x7

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 417
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v28, v1

    move-object/from16 v34, v2

    const/4 v1, -0x1

    const/4 v2, -0x2

    .end local v1    # "checkboxLabel":Landroid/widget/TextView;
    .end local v2    # "checkboxRow":Landroid/widget/LinearLayout;
    .local v28, "checkboxLabel":Landroid/widget/TextView;
    .local v34, "checkboxRow":Landroid/widget/LinearLayout;
    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 419
    .local v3, "buttonRowParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x18

    invoke-static {v7, v2}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 420
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    const v47, 0x663

    const v48, 0x66a

    const p0, -0x2d68

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    .line 426
    if-eqz v10, :cond_b

    const/16 v33, -0x1

    goto :goto_d

    :cond_b
    const/high16 v1, -0x1000000

    const/high16 v33, -0x1000000

    .line 427
    :goto_d
    if-eqz v10, :cond_c

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move/from16 v37, v1

    goto :goto_e

    :cond_c
    const/16 v37, -0x1

    :goto_e
    const/16 v16, 0x1

    .line 423
    move-object/from16 v41, v36

    .end local v36    # "readMoreText":Landroid/widget/TextView;
    .local v41, "readMoreText":Landroid/widget/TextView;
    move-object/from16 v1, v45

    move-object/from16 v42, v34

    move-object/from16 v34, v35

    .end local v35    # "instagramColumn":Landroid/widget/LinearLayout;
    .local v34, "instagramColumn":Landroid/widget/LinearLayout;
    .local v42, "checkboxRow":Landroid/widget/LinearLayout;
    move-object/from16 v36, v3

    move-object/from16 v35, v40

    move-object/from16 v44, v31

    move-object/from16 v31, v30

    move-object/from16 v30, v44

    .end local v3    # "buttonRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v40    # "checkboxRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v30, "telegramColumn":Landroid/widget/LinearLayout;
    .local v31, "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v35, "checkboxRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v36, "buttonRowParams":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v3, v33

    move-object/from16 v38, v12

    move-object/from16 v33, v39

    move-object v12, v4

    .end local v4    # "dontShowAgain":Landroid/widget/CheckBox;
    .end local v39    # "socialColumnParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v12, "dontShowAgain":Landroid/widget/CheckBox;
    .local v33, "socialColumnParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v38, "displayMetrics":Landroid/util/DisplayMetrics;
    move/from16 v4, v37

    move-object/from16 v37, v8

    move-object/from16 v26, v27

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v27, v13

    move-object v13, v5

    .end local v5    # "buttonRow":Landroid/widget/LinearLayout;
    .local v13, "buttonRow":Landroid/widget/LinearLayout;
    .local v26, "readMoreParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v27, "windowManager":Landroid/view/WindowManager;
    move/from16 v5, v16

    move-object/from16 v16, v6

    .end local v6    # "youtubeColumn":Landroid/widget/LinearLayout;
    .local v16, "youtubeColumn":Landroid/widget/LinearLayout;
    move v6, v10

    :try_start_9
    invoke-static/range {v1 .. v6}, Lbin/mt/signature/KillerApplicationmt;->createTextViewButton(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/widget/TextView;

    move-result-object v1

    move-object v6, v1

    .line 432
    .local v6, "dismissButton":Landroid/widget/TextView;
    new-instance v1, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda3;

    invoke-direct {v1, v12, v7, v11}, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda3;-><init>(Landroid/widget/CheckBox;Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    const v47, 0x66a

    const v48, 0x672

    const p0, -0x320d

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const v47, 0x672

    const v48, 0x679

    const p0, -0x3c6d

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    .line 449
    move-object/from16 v1, v45

    move-object/from16 v43, v6

    .end local v6    # "dismissButton":Landroid/widget/TextView;
    .local v43, "dismissButton":Landroid/widget/TextView;
    move v6, v10

    invoke-static/range {v1 .. v6}, Lbin/mt/signature/KillerApplicationmt;->createTextViewButton(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/widget/TextView;

    move-result-object v1

    .line 458
    .local v1, "joinButton":Landroid/widget/TextView;
    new-instance v2, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda4;

    invoke-direct {v2, v12, v7, v11}, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda4;-><init>(Landroid/widget/CheckBox;Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 484
    .local v2, "dismissButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x8

    invoke-static {v7, v3}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v4, v4, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 485
    move-object/from16 v5, v43

    .end local v43    # "dismissButton":Landroid/widget/TextView;
    .local v5, "dismissButton":Landroid/widget/TextView;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v6, v4, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v3, v6

    .line 489
    .local v3, "joinButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x8

    invoke-static {v7, v6}, Lbin/mt/signature/KillerApplicationmt;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 490
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 497
    move-object/from16 v4, v32

    .end local v32    # "headerRow":Landroid/widget/LinearLayout;
    .local v4, "headerRow":Landroid/widget/LinearLayout;
    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 498
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    move-object/from16 v6, v41

    .end local v41    # "readMoreText":Landroid/widget/TextView;
    .local v6, "readMoreText":Landroid/widget/TextView;
    invoke-virtual {v15, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 501
    move-object/from16 v8, v42

    .end local v42    # "checkboxRow":Landroid/widget/LinearLayout;
    .local v8, "checkboxRow":Landroid/widget/LinearLayout;
    invoke-virtual {v15, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 502
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    invoke-virtual {v11, v15}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 507
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    move-object/from16 v32, v17

    .line 508
    .local v32, "window":Landroid/view/Window;
    move-object/from16 v17, v0

    move-object/from16 v0, v32

    .end local v32    # "window":Landroid/view/Window;
    .local v0, "window":Landroid/view/Window;
    .local v17, "socialMediaRow":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_d

    .line 509
    move-object/from16 v32, v1

    move-object/from16 v39, v2

    .end local v1    # "joinButton":Landroid/widget/TextView;
    .end local v2    # "dismissButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v32, "joinButton":Landroid/widget/TextView;
    .local v39, "dismissButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    int-to-double v1, v14

    const-wide v40, 0x3feccccccccccccdL    # 0.9

    mul-double v1, v1, v40

    double-to-int v1, v1

    .line 510
    .local v1, "dialogWidth":I
    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 511
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    goto :goto_f

    .line 508
    .end local v32    # "joinButton":Landroid/widget/TextView;
    .end local v39    # "dismissButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v1, "joinButton":Landroid/widget/TextView;
    .restart local v2    # "dismissButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_d
    move-object/from16 v32, v1

    move-object/from16 v39, v2

    .line 515
    .end local v1    # "joinButton":Landroid/widget/TextView;
    .end local v2    # "dismissButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v32    # "joinButton":Landroid/widget/TextView;
    .restart local v39    # "dismissButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_f
    new-instance v1, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v11, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 521
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 524
    .end local v0    # "window":Landroid/view/Window;
    .end local v3    # "joinButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "headerRow":Landroid/widget/LinearLayout;
    .end local v5    # "dismissButton":Landroid/widget/TextView;
    .end local v6    # "readMoreText":Landroid/widget/TextView;
    .end local v8    # "checkboxRow":Landroid/widget/LinearLayout;
    .end local v9    # "descriptionText":Landroid/widget/TextView;
    .end local v10    # "isDarkMode":Z
    .end local v11    # "dialog":Landroid/app/Dialog;
    .end local v12    # "dontShowAgain":Landroid/widget/CheckBox;
    .end local v13    # "buttonRow":Landroid/widget/LinearLayout;
    .end local v14    # "screenWidth":I
    .end local v15    # "mainLayout":Landroid/widget/LinearLayout;
    .end local v16    # "youtubeColumn":Landroid/widget/LinearLayout;
    .end local v17    # "socialMediaRow":Landroid/widget/LinearLayout;
    .end local v18    # "logoLoaded":Z
    .end local v19    # "titleText":Landroid/widget/TextView;
    .end local v20    # "shape":Landroid/graphics/drawable/GradientDrawable;
    .end local v21    # "subtitleText":Landroid/widget/TextView;
    .end local v22    # "titleSection":Landroid/widget/LinearLayout;
    .end local v23    # "socialRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "logoImage":Landroid/widget/ImageView;
    .end local v26    # "readMoreParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v27    # "windowManager":Landroid/view/WindowManager;
    .end local v28    # "checkboxLabel":Landroid/widget/TextView;
    .end local v29    # "logoParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "telegramColumn":Landroid/widget/LinearLayout;
    .end local v31    # "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "joinButton":Landroid/widget/TextView;
    .end local v33    # "socialColumnParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v34    # "instagramColumn":Landroid/widget/LinearLayout;
    .end local v35    # "checkboxRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v36    # "buttonRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v38    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v39    # "dismissButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_11

    .line 522
    :catch_4
    move-exception v0

    goto :goto_10

    :catch_5
    move-exception v0

    move-object/from16 v37, v8

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v47, 0x679

    const v48, 0x68f

    const p0, -0x3667

    invoke-static/range {v47 .. v49}, Lbin/mt/signature/KillerApplicationmt;->$(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v37

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method
