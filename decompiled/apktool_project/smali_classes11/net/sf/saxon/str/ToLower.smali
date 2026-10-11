.class public Lnet/sf/saxon/str/ToLower;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnet/sf/saxon/z/IntRangeToIntMap;

.field public static final b:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/z/IntRangeToIntMap;

    const/16 v1, 0x28a

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntRangeToIntMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/str/ToLower;->a:Lnet/sf/saxon/z/IntRangeToIntMap;

    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/str/ToLower;->b:Lnet/sf/saxon/z/IntHashMap;

    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Lnet/sf/saxon/str/ToLower;->c:[C

    invoke-static {}, Lnet/sf/saxon/str/ToLower;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    sget-object v1, Lnet/sf/saxon/str/ToLower;->c:[C

    int-to-char v2, v0

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    const/16 v2, 0x5a

    const/16 v3, 0x20

    invoke-static {v0, v2, v3}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v0, 0xc0

    const/16 v2, 0xd6

    invoke-static {v0, v2, v3}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v0, 0xd8

    const/16 v4, 0xde

    invoke-static {v0, v4, v3}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x102

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x104

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x106

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x108

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x10a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x10c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x10e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x110

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x112

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x114

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x116

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x118

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x11a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x11c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x11e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x120

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x122

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x124

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x126

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x128

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x12a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x12c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x12e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x130

    const-string v4, "i\u0307"

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->d(ILjava/lang/String;)V

    const/16 v1, 0x132

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x134

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x136

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x139

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x13b

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x13d

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x13f

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x141

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x143

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x145

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x147

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x14a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x14c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x14e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x150

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x152

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x154

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x156

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x158

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x15a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x15c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x15e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x160

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x162

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x164

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x166

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x168

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x16a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x16c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x16e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x170

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x172

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x174

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x176

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x178

    const/16 v4, -0x79

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x179

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x17b

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x17d

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x181

    const/16 v4, 0xd2

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x182

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x184

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x186

    const/16 v4, 0xce

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x187

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x189

    const/16 v4, 0x18a

    const/16 v5, 0xcd

    invoke-static {v1, v4, v5}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x18b

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x18e

    const/16 v4, 0x4f

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x18f

    const/16 v4, 0xca

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x190

    const/16 v4, 0xcb

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x191

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x193

    invoke-static {v1, v5}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x194

    const/16 v4, 0xcf

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x196

    const/16 v4, 0xd3

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x197

    const/16 v5, 0xd1

    invoke-static {v1, v5}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x198

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x19c

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x19d

    const/16 v4, 0xd5

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x19f

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1a0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1a2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1a4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1a6

    const/16 v2, 0xda

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1a7

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1a9

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ac

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ae

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1af

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1b2

    const/16 v2, 0xd9

    const/16 v4, 0x1b1

    invoke-static {v4, v1, v2}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1b3

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1b5

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1b7

    const/16 v2, 0xdb

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1b8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1bc

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1c4

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1c5

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1c7

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1c8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ca

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1cb

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1cd

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1cf

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1d1

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1d3

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1d5

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1d7

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1d9

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1db

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1de

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ea

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ec

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ee

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1f1

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1f2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1f4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1f6

    const/16 v2, -0x61

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1f7

    const/16 v2, -0x38

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1f8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1fa

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1fc

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1fe

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x200

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x202

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x204

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x206

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x208

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x20a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x20c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x20e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x210

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x212

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x214

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x216

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x218

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x21a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x21c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x21e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x220

    const/16 v2, -0x82

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x222

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x224

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x226

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x228

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x22a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x22c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x22e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x230

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x232

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x23a

    const/16 v4, 0x2a2b

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x23b

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x23d

    const/16 v4, -0xa3

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x23e

    const/16 v4, 0x2a28

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x241

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x243

    const/16 v4, -0xc3

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x244

    const/16 v4, 0x45

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x245

    const/16 v4, 0x47

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x246

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x248

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x24a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x24c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x24e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x370

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x372

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x376

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x386

    const/16 v4, 0x26

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x38a

    const/16 v4, 0x25

    const/16 v5, 0x388

    invoke-static {v5, v1, v4}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x38c

    const/16 v4, 0x40

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x38f

    const/16 v4, 0x3f

    const/16 v5, 0x38e

    invoke-static {v5, v1, v4}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x391

    const/16 v4, 0x3a1

    invoke-static {v1, v4, v3}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x3a3

    const/16 v4, 0x3ab

    invoke-static {v1, v4, v3}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x3cf

    const/16 v4, 0x8

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3d8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3da

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3dc

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3de

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3e0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3e2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3e4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3e6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3e8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3ea

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3ec

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3ee

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3f4

    const/16 v4, -0x3c

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3f7

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3f9

    const/4 v4, -0x7

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3fa

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x3fd

    const/16 v5, 0x3ff

    invoke-static {v1, v5, v2}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x40f

    const/16 v2, 0x50

    const/16 v5, 0x400

    invoke-static {v5, v1, v2}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x410

    const/16 v2, 0x42f

    invoke-static {v1, v2, v3}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x460

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x462

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x464

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x466

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x468

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x46a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x46c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x46e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x470

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x472

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x474

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x476

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x478

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x47a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x47c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x47e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x480

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x48a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x48c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x48e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x490

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x492

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x494

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x496

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x498

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x49a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x49c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x49e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4a0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4a2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4a4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4a6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4a8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4aa

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4ac

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4ae

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4b0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4b2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4b4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4b6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4b8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4ba

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4bc

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4be

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4c0

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4c1

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4c3

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4c5

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4c7

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4c9

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4cb

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4cd

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4d0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4d2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4d4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4d6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4d8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4da

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4dc

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4de

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4e0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4e2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4e4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4e6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4e8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4ea

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4ec

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4ee

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4f0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4f2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4f4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4f6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4f8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4fa

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4fc

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x4fe

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x500

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x502

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x504

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x506

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x508

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x50a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x50c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x50e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x510

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x512

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x514

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x516

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x518

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x51a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x51c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x51e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x520

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x522

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x524

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x526

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x531

    const/16 v2, 0x556

    const/16 v5, 0x30

    invoke-static {v1, v2, v5}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x10a0

    const/16 v2, 0x10c5

    const/16 v6, 0x1c60

    invoke-static {v1, v2, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x10c7

    invoke-static {v1, v6}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x10cd

    invoke-static {v1, v6}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e00

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e02

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e04

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e06

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e08

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e0a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e0c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e0e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e10

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e12

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e14

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e16

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e18

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e1a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e1c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e1e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e20

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e22

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e24

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e26

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e28

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e2a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e2c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e2e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e30

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e32

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e34

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e36

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e38

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e3a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e3c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e3e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e40

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e42

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e44

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e46

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e48

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e4a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e4c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e4e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e50

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e52

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e54

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e56

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e58

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e5a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e5c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e5e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e60

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e62

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e64

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e66

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e68

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e6a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e6c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e6e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e70

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e72

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e74

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e76

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e78

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e7a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e7c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e7e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e80

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e82

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e84

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e86

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e88

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e8a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e8c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e8e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e90

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e92

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e94

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1e9e

    const/16 v2, -0x1dbf

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ea0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ea2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ea4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ea6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ea8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eaa

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eac

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eae

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eb0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eb2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eb4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eb6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eb8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eba

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ebc

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ebe

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ec0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ec2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ec4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ec6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ec8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eca

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ecc

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ece

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ed0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ed2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ed4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ed6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ed8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eda

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1edc

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ede

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ee0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ee2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ee4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ee6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ee8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eea

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eec

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1eee

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ef0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ef2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ef4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ef6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ef8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1efa

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1efc

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1efe

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1f08

    const/16 v2, 0x1f0f

    const/4 v6, -0x8

    invoke-static {v1, v2, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1f18

    const/16 v2, 0x1f1d

    invoke-static {v1, v2, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1f28

    const/16 v2, 0x1f2f

    invoke-static {v1, v2, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1f38

    const/16 v2, 0x1f3f

    invoke-static {v1, v2, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1f48

    const/16 v2, 0x1f4d

    invoke-static {v1, v2, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1f59

    invoke-static {v1, v6}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1f5b

    invoke-static {v1, v6}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1f5d

    invoke-static {v1, v6}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1f5f

    invoke-static {v1, v6}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1f68

    const/16 v2, 0x1f6f

    invoke-static {v1, v2, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1f88

    const/16 v2, 0x1f8f

    invoke-static {v1, v2, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1f98

    const/16 v2, 0x1f9f

    invoke-static {v1, v2, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1fa8

    const/16 v2, 0x1faf

    invoke-static {v1, v2, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1fb8

    const/16 v2, 0x1fb9

    invoke-static {v1, v2, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1fbb

    const/16 v2, -0x4a

    const/16 v7, 0x1fba

    invoke-static {v7, v1, v2}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1fbc

    const/16 v2, -0x9

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1fcb

    const/16 v7, -0x56

    const/16 v8, 0x1fc8

    invoke-static {v8, v1, v7}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1fcc

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1fd8

    const/16 v7, 0x1fd9

    invoke-static {v1, v7, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1fdb

    const/16 v7, -0x64

    const/16 v8, 0x1fda

    invoke-static {v8, v1, v7}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1fe8

    const/16 v7, 0x1fe9

    invoke-static {v1, v7, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1feb

    const/16 v6, -0x70

    const/16 v7, 0x1fea

    invoke-static {v7, v1, v6}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1fec

    invoke-static {v1, v4}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x1ff9

    const/16 v4, -0x80

    const/16 v6, 0x1ff8

    invoke-static {v6, v1, v4}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1ffb

    const/16 v4, -0x7e

    const/16 v6, 0x1ffa

    invoke-static {v6, v1, v4}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x1ffc

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2126

    const/16 v2, -0x1d5d

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x212a

    const/16 v2, -0x20bf

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x212b

    const/16 v2, -0x2046

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2132

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x216f

    const/16 v2, 0x10

    const/16 v4, 0x2160

    invoke-static {v4, v1, v2}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x2183

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x24cf

    const/16 v2, 0x1a

    const/16 v4, 0x24b6

    invoke-static {v4, v1, v2}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x2c00

    const/16 v2, 0x2c2e

    invoke-static {v1, v2, v5}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x2c60

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c62

    const/16 v2, -0x29f7

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c63

    const/16 v2, -0xee6

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c64

    const/16 v2, -0x29e7

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c67

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c69

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c6b

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c6d

    const/16 v2, -0x2a1c

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c6e

    const/16 v2, -0x29fd

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c6f

    const/16 v2, -0x2a1f

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c70

    const/16 v2, -0x2a1e

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c72

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c75

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c7f

    const/16 v2, -0x2a3f

    const/16 v4, 0x2c7e

    invoke-static {v4, v1, v2}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const/16 v1, 0x2c80

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c82

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c84

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c86

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c88

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c8a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c8c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c8e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c90

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c92

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c94

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c96

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c98

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c9a    # 1.6E-41f

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c9c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2c9e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2ca0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2ca2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2ca4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2ca6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2ca8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2caa

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cac

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cae

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cb0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cb2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cb4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cb6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cb8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cba

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cbc

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cbe

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cc0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cc2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cc4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cc6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cc8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cca

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2ccc

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cce

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cd0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cd2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cd4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cd6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cd8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cda

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cdc

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cde

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2ce0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2ce2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2ceb

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2ced

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const/16 v1, 0x2cf2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa640

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa642

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa644

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa646

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa648

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa64a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa64c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa64e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa650

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa652

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa654

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa656

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa658

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa65a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa65c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa65e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa660

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa662

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa664

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa666

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa668

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa66a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa66c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa680

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa682

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa684

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa686

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa688

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa68a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa68c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa68e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa690

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa692

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa694

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa696

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa722

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa724

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa726

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa728

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa72a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa72c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa72e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa732

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa734

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa736

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa738

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa73a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa73c    # 5.9992E-41f

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa73e    # 5.9995E-41f

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa740    # 5.9998E-41f

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa742    # 6.0001E-41f

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa744    # 6.0004E-41f

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa746    # 6.0006E-41f

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa748    # 6.0009E-41f

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa74a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa74c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa74e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa750

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa752

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa754

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa756

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa758

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa75a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa75c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa75e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa760

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa762

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa764

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa766

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa768

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa76a

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa76c

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa76e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa779

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa77b

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa77d

    const v2, -0x8a04

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa77e

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa780

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa782

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa784

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa786

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa78b

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa78d

    const v2, -0xa528

    invoke-static {v1, v2}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa790

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa792

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa7a0

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa7a2

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa7a4

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa7a6

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v1, 0xa7a8

    invoke-static {v1, v0}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v0, 0xa7aa

    const v1, -0xa544

    invoke-static {v0, v1}, Lnet/sf/saxon/str/ToLower;->c(II)V

    const v0, 0xff21

    const v1, 0xff3a

    invoke-static {v0, v1, v3}, Lnet/sf/saxon/str/ToLower;->b(III)V

    const v0, 0x10427

    const/16 v1, 0x28

    const v2, 0x10400

    invoke-static {v2, v0, v1}, Lnet/sf/saxon/str/ToLower;->b(III)V

    return-void
.end method

.method public static b(III)V
    .locals 2

    sget-object v0, Lnet/sf/saxon/str/ToLower;->a:Lnet/sf/saxon/z/IntRangeToIntMap;

    invoke-virtual {v0, p0, p1, p2}, Lnet/sf/saxon/z/IntRangeToIntMap;->addEntry(III)V

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    :goto_0
    if-gt p0, p1, :cond_0

    sget-object v0, Lnet/sf/saxon/str/ToLower;->c:[C

    add-int v1, p0, p2

    int-to-char v1, v1

    aput-char v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(II)V
    .locals 0

    invoke-static {p0, p0, p1}, Lnet/sf/saxon/str/ToLower;->b(III)V

    return-void
.end method

.method public static d(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/sf/saxon/str/ToLower;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static toLower(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->estimatedLength()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    sget-object v2, Lnet/sf/saxon/str/ToLower;->c:[C

    aget-char v1, v2, v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_0
    sget-object v2, Lnet/sf/saxon/str/ToLower;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_1
    sget-object v2, Lnet/sf/saxon/str/ToLower;->a:Lnet/sf/saxon/z/IntRangeToIntMap;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/z/IntRangeToIntMap;->get(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_2
    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method
