/* include/linux/msm_mdp.h
 *
 * Copyright (C) 2007 Google Incorporated
<<<<<<< HEAD
=======
 * Copyright (c) 2009-2011, Code Aurora Forum. All rights reserved.
>>>>>>> master
 *
 * This software is licensed under the terms of the GNU General Public
 * License version 2, as published by the Free Software Foundation, and
 * may be copied, distributed, and modified under those terms.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */
#ifndef _MSM_MDP_H_
#define _MSM_MDP_H_

#include <linux/types.h>
<<<<<<< HEAD
=======
#include <linux/fb.h>
>>>>>>> master

#define MSMFB_IOCTL_MAGIC 'm'
#define MSMFB_GRP_DISP          _IOW(MSMFB_IOCTL_MAGIC, 1, unsigned int)
#define MSMFB_BLIT              _IOW(MSMFB_IOCTL_MAGIC, 2, unsigned int)
<<<<<<< HEAD

/* drewis: adding for android 4.0 */
=======
#define MSMFB_SUSPEND_SW_REFRESHER _IOW(MSMFB_IOCTL_MAGIC, 128, unsigned int)
#define MSMFB_RESUME_SW_REFRESHER _IOW(MSMFB_IOCTL_MAGIC, 129, unsigned int)
#define MSMFB_CURSOR _IOW(MSMFB_IOCTL_MAGIC, 130, struct fb_cursor)
#define MSMFB_SET_LUT _IOW(MSMFB_IOCTL_MAGIC, 131, struct fb_cmap)
#define MSMFB_HISTOGRAM _IOWR(MSMFB_IOCTL_MAGIC, 132, struct mdp_histogram)
/* new ioctls's for set/get ccs matrix */
#define MSMFB_GET_CCS_MATRIX  _IOWR(MSMFB_IOCTL_MAGIC, 133, struct mdp_ccs)
#define MSMFB_SET_CCS_MATRIX  _IOW(MSMFB_IOCTL_MAGIC, 134, struct mdp_ccs)
>>>>>>> master
#define MSMFB_OVERLAY_SET       _IOWR(MSMFB_IOCTL_MAGIC, 135, \
						struct mdp_overlay)
#define MSMFB_OVERLAY_UNSET     _IOW(MSMFB_IOCTL_MAGIC, 136, unsigned int)
#define MSMFB_OVERLAY_PLAY      _IOW(MSMFB_IOCTL_MAGIC, 137, \
						struct msmfb_overlay_data)
<<<<<<< HEAD
#define MSMFB_OVERLAY_GET      _IOR(MSMFB_IOCTL_MAGIC, 140, \
						struct mdp_overlay)
#define MSMFB_OVERLAY_3D       _IOWR(MSMFB_IOCTL_MAGIC, 147, \
						struct msmfb_overlay_3d)
/* drewis: end */

#if 0 /* drewis: superseded below */
enum {
	MDP_RGB_565,		/* RGB 565 planar */
	MDP_XRGB_8888,		/* RGB 888 padded */
	MDP_Y_CBCR_H2V2,	/* Y and CbCr, pseudo planar w/ Cb is in MSB */
	MDP_ARGB_8888,		/* ARGB 888 */
	MDP_RGB_888,		/* RGB 888 planar */
	MDP_Y_CRCB_H2V2,	/* Y and CrCb, pseudo planar w/ Cr is in MSB */
	MDP_YCRYCB_H2V1,	/* YCrYCb interleave */
	MDP_Y_CRCB_H2V1,	/* Y and CrCb, pseduo planar w/ Cr is in MSB */
	MDP_Y_CBCR_H2V1,	/* Y and CrCb, pseduo planar w/ Cr is in MSB */
	MDP_RGBA_8888,		/* ARGB 888 */
	MDP_BGRA_8888,		/* ABGR 888 */
	MDP_RGBX_8888,		/* RGBX 888 */
	MDP_IMGTYPE_LIMIT	/* Non valid image type after this enum */
};
#endif

/* drewis: added for android 4.0 */
#define FB_TYPE_3D_PANEL 0x10101010
#define MDP_IMGTYPE2_START 0x10000
=======
#define MSMFB_GET_PAGE_PROTECTION _IOR(MSMFB_IOCTL_MAGIC, 138, \
					struct mdp_page_protection)
#define MSMFB_SET_PAGE_PROTECTION _IOW(MSMFB_IOCTL_MAGIC, 139, \
					struct mdp_page_protection)
#define MSMFB_OVERLAY_GET      _IOR(MSMFB_IOCTL_MAGIC, 140, \
						struct mdp_overlay)
#define MSMFB_OVERLAY_PLAY_ENABLE     _IOW(MSMFB_IOCTL_MAGIC, 141, unsigned int)
#define MSMFB_OVERLAY_BLT       _IOWR(MSMFB_IOCTL_MAGIC, 142, \
						struct msmfb_overlay_blt)
#define MSMFB_OVERLAY_BLT_OFFSET     _IOW(MSMFB_IOCTL_MAGIC, 143, unsigned int)
#define MSMFB_HISTOGRAM_START	_IO(MSMFB_IOCTL_MAGIC, 144)
#define MSMFB_HISTOGRAM_STOP	_IO(MSMFB_IOCTL_MAGIC, 145)

#define MSMFB_OVERLAY_3D       _IOWR(MSMFB_IOCTL_MAGIC, 146, \
						struct msmfb_overlay_3d)

#define MDP_IMGTYPE2_START 0x10000

>>>>>>> master
enum {
	MDP_RGB_565,      /* RGB 565 planer */
	MDP_XRGB_8888,    /* RGB 888 padded */
	MDP_Y_CBCR_H2V2,  /* Y and CbCr, pseudo planer w/ Cb is in MSB */
	MDP_ARGB_8888,    /* ARGB 888 */
	MDP_RGB_888,      /* RGB 888 planer */
	MDP_Y_CRCB_H2V2,  /* Y and CrCb, pseudo planer w/ Cr is in MSB */
	MDP_YCRYCB_H2V1,  /* YCrYCb interleave */
	MDP_Y_CRCB_H2V1,  /* Y and CrCb, pseduo planer w/ Cr is in MSB */
	MDP_Y_CBCR_H2V1,   /* Y and CrCb, pseduo planer w/ Cr is in MSB */
	MDP_RGBA_8888,    /* ARGB 888 */
	MDP_BGRA_8888,	  /* ABGR 888 */
	MDP_RGBX_8888,	  /* RGBX 888 */
	MDP_Y_CRCB_H2V2_TILE,  /* Y and CrCb, pseudo planer tile */
	MDP_Y_CBCR_H2V2_TILE,  /* Y and CbCr, pseudo planer tile */
	MDP_Y_CR_CB_H2V2,  /* Y, Cr and Cb, planar */
<<<<<<< HEAD
	MDP_Y_CR_CB_GH2V2,  /* Y, Cr and Cb, planar aligned to Android YV12 */
	MDP_Y_CB_CR_H2V2,  /* Y, Cb and Cr, planar */
	MDP_Y_CRCB_H1V1,  /* Y and CrCb, pseduo planer w/ Cr is in MSB */
	MDP_Y_CBCR_H1V1,  /* Y and CbCr, pseduo planer w/ Cb is in MSB */
=======
	MDP_Y_CB_CR_H2V2,  /* Y, Cb and Cr, planar */
>>>>>>> master
	MDP_IMGTYPE_LIMIT,
	MDP_BGR_565 = MDP_IMGTYPE2_START,      /* BGR 565 planer */
	MDP_FB_FORMAT,    /* framebuffer format */
	MDP_IMGTYPE_LIMIT2 /* Non valid image type after this enum */
};
<<<<<<< HEAD
/* drewis: end */
=======
>>>>>>> master

enum {
	PMEM_IMG,
	FB_IMG,
};

<<<<<<< HEAD
/* flag values */
#define MDP_ROT_NOP	0
#define MDP_FLIP_LR	0x1
#define MDP_FLIP_UD	0x2
#define MDP_ROT_90	0x4
#define MDP_ROT_180	(MDP_FLIP_UD|MDP_FLIP_LR)
#define MDP_ROT_270	(MDP_ROT_90|MDP_FLIP_UD|MDP_FLIP_LR)
#define MDP_ROT_MASK	0x7
#define MDP_DITHER	0x8
#define MDP_BLUR	0x10
#define MDP_BLEND_FG_PREMULT 0x20000

#define MDP_TRANSP_NOP	0xffffffff
#define MDP_ALPHA_NOP	0xff

/* drewis: added for android 4.0 */
#define MDP_DEINTERLACE 0x80000000
#define MDP_BLIT_NON_CACHED		0x01000000
#define MDP_OV_PIPE_SHARE		0x00800000
#define MDP_OV_PLAY_NOWAIT		0x00200000
#define MDP_SOURCE_ROTATED_90		0x00100000
/* drewis: end */

#define MSMFB_OVERLAY_PLAY_WAIT _IOWR(MSMFB_IOCTL_MAGIC, 149, \
						struct msmfb_overlay_data)
#define MDP_MEMORY_ID_TYPE_FB		0x00001000
=======
/* mdp_blit_req flag values */
#define MDP_ROT_NOP 0
#define MDP_FLIP_LR 0x1
#define MDP_FLIP_UD 0x2
#define MDP_ROT_90 0x4
#define MDP_ROT_180 (MDP_FLIP_UD|MDP_FLIP_LR)
#define MDP_ROT_270 (MDP_ROT_90|MDP_FLIP_UD|MDP_FLIP_LR)
#define MDP_DITHER 0x8
#define MDP_BLUR 0x10
#define MDP_BLEND_FG_PREMULT 0x20000
#define MDP_DEINTERLACE 0x80000000
#define MDP_SHARPENING  0x40000000
#define MDP_NO_DMA_BARRIER_START	0x20000000
#define MDP_NO_DMA_BARRIER_END		0x10000000
#define MDP_NO_BLIT			0x08000000
#define MDP_BLIT_WITH_DMA_BARRIERS	0x000
#define MDP_BLIT_WITH_NO_DMA_BARRIERS    \
	(MDP_NO_DMA_BARRIER_START | MDP_NO_DMA_BARRIER_END)
#define MDP_BLIT_SRC_GEM                0x04000000
#define MDP_BLIT_DST_GEM                0x02000000
#define MDP_BLIT_NON_CACHED		0x01000000
#define MDP_OV_PIPE_SHARE		0x00800000
#define MDP_DEINTERLACE_ODD		0x00400000
#define MDP_OV_PLAY_NOWAIT		0x00200000

#define MDP_TRANSP_NOP 0xffffffff
#define MDP_ALPHA_NOP 0xff

#define MDP_FB_PAGE_PROTECTION_NONCACHED         (0)
#define MDP_FB_PAGE_PROTECTION_WRITECOMBINE      (1)
#define MDP_FB_PAGE_PROTECTION_WRITETHROUGHCACHE (2)
#define MDP_FB_PAGE_PROTECTION_WRITEBACKCACHE    (3)
#define MDP_FB_PAGE_PROTECTION_WRITEBACKWACACHE  (4)
/* Sentinel: Don't use! */
#define MDP_FB_PAGE_PROTECTION_INVALID           (5)
/* Count of the number of MDP_FB_PAGE_PROTECTION_... values. */
#define MDP_NUM_FB_PAGE_PROTECTION_VALUES        (5)
>>>>>>> master

struct mdp_rect {
	uint32_t x;
	uint32_t y;
	uint32_t w;
	uint32_t h;
};

struct mdp_img {
	uint32_t width;
	uint32_t height;
	uint32_t format;
	uint32_t offset;
	int memory_id;		/* the file descriptor */
<<<<<<< HEAD
};

=======
	uint32_t priv;
};

/*
 * {3x3} + {3} ccs matrix
 */

#define MDP_CCS_RGB2YUV 	0
#define MDP_CCS_YUV2RGB 	1

#define MDP_CCS_SIZE	9
#define MDP_BV_SIZE	3

struct mdp_ccs {
	int direction;			/* MDP_CCS_RGB2YUV or YUV2RGB */
	uint16_t ccs[MDP_CCS_SIZE];	/* 3x3 color coefficients */
	uint16_t bv[MDP_BV_SIZE];	/* 1x3 bias vector */
};

/* The version of the mdp_blit_req structure so that
 * user applications can selectively decide which functionality
 * to include
 */

#define MDP_BLIT_REQ_VERSION 2

>>>>>>> master
struct mdp_blit_req {
	struct mdp_img src;
	struct mdp_img dst;
	struct mdp_rect src_rect;
	struct mdp_rect dst_rect;
	uint32_t alpha;
	uint32_t transp_mask;
	uint32_t flags;
<<<<<<< HEAD
=======
	int sharpening_strength;  /* -127 <--> 127, default 64 */
>>>>>>> master
};

struct mdp_blit_req_list {
	uint32_t count;
	struct mdp_blit_req req[];
};

<<<<<<< HEAD
/* drewis: added for android 4.0 */
=======
#define MSMFB_DATA_VERSION 2

>>>>>>> master
struct msmfb_data {
	uint32_t offset;
	int memory_id;
	int id;
	uint32_t flags;
	uint32_t priv;
};

#define MSMFB_NEW_REQUEST -1

struct msmfb_overlay_data {
	uint32_t id;
	struct msmfb_data data;
<<<<<<< HEAD
	uint32_t version_key;
	struct msmfb_data plane1_data;
	struct msmfb_data plane2_data;
=======
>>>>>>> master
};

struct msmfb_img {
	uint32_t width;
	uint32_t height;
	uint32_t format;
};

<<<<<<< HEAD
struct dpp_ctrl {
	/*
	 *'sharp_strength' has inputs = -128 <-> 127
	 *  Increasingly positive values correlate with increasingly sharper
	 *  picture. Increasingly negative values correlate with increasingly
	 *  smoothed picture.
	 */
	int8_t sharp_strength;
};

=======
>>>>>>> master
struct mdp_overlay {
	struct msmfb_img src;
	struct mdp_rect src_rect;
	struct mdp_rect dst_rect;
	uint32_t z_order;	/* stage number */
	uint32_t is_fg;		/* control alpha & transp */
	uint32_t alpha;
	uint32_t transp_mask;
	uint32_t flags;
	uint32_t id;
	uint32_t user_data[8];
<<<<<<< HEAD
	struct dpp_ctrl dpp;
=======
>>>>>>> master
};

struct msmfb_overlay_3d {
	uint32_t is_3d;
	uint32_t width;
	uint32_t height;
};
<<<<<<< HEAD
/* drewis: end */

#endif /* _MSM_MDP_H_ */
=======


struct msmfb_overlay_blt {
	uint32_t enable;
	struct msmfb_data data;
};

struct mdp_histogram {
	uint32_t frame_cnt;
	uint32_t bin_cnt;
	uint32_t *r;
	uint32_t *g;
	uint32_t *b;
};

struct mdp_page_protection {
	uint32_t page_protection;
};

#ifdef __KERNEL__

/* get the framebuffer physical address information */
int get_fb_phys_info(unsigned long *start, unsigned long *len, int fb_num);

#endif

#endif /*_MSM_MDP_H_*/
>>>>>>> master
