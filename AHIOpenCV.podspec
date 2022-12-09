#
#  OpenCV
#

Pod::Spec.new do |spec|
    spec.name         = 'AHIOpenCV'
    spec.version      = '4.5.1'
    spec.summary      = 'OpenCV, the open source computer vision and machine learning software library.'
  
    spec.description  = <<-DESC
    OpenCV (Open Source Computer Vision Library) is an open source computer vision and machine learning software library. OpenCV was built to provide a common infrastructure for computer vision applications and to accelerate the use of machine perception in the commercial products. Being an Apache 2 licensed product, OpenCV makes it easy for businesses to utilize and modify the code.
                        DESC
  
    spec.homepage     = 'https://opencv.org'
    spec.license      = { :type => '3-clause BSD', :text =>  <<-LICENSE
                        By downloading, copying, installing or using the software you agree to this license.
                        If you do not agree to this license, do not download, install,
                        copy or use the software.
                                                 License Agreement
                                     For Open Source Computer Vision Library
                                             (3-clause BSD License)
                       Copyright (C) 2000-2020, Intel Corporation, all rights reserved.
                       Copyright (C) 2009-2011, Willow Garage Inc., all rights reserved.
                       Copyright (C) 2009-2016, NVIDIA Corporation, all rights reserved.
                       Copyright (C) 2010-2013, Advanced Micro Devices, Inc., all rights reserved.
                       Copyright (C) 2015-2016, OpenCV Foundation, all rights reserved.
                       Copyright (C) 2015-2016, Itseez Inc., all rights reserved.
                       Copyright (C) 2019-2020, Xperience AI, all rights reserved.
                       Third party copyrights are property of their respective owners.
                       Redistribution and use in source and binary forms, with or without modification,
                       are permitted provided that the following conditions are met:
                         * Redistributions of source code must retain the above copyright notice,
                           this list of conditions and the following disclaimer.
                         * Redistributions in binary form must reproduce the above copyright notice,
                           this list of conditions and the following disclaimer in the documentation
                           and/or other materials provided with the distribution.
                         * Neither the names of the copyright holders nor the names of the contributors
                           may be used to endorse or promote products derived from this software
                           without specific prior written permission.
                       This software is provided by the copyright holders and contributors \"as is\" and
                       any express or implied warranties, including, but not limited to, the implied
                       warranties of merchantability and fitness for a particular purpose are disclaimed.
                       In no event shall copyright holders or contributors be liable for any direct,
                       indirect, incidental, special, exemplary, or consequential damages
                       (including, but not limited to, procurement of substitute goods or services;
                       loss of use, data, or profits; or business interruption) however caused
                       and on any theory of liability, whether in contract, strict liability,
                       or tort (including negligence or otherwise) arising in any way out of
                       the use of this software, even if advised of the possibility of such damage.
                                                            LICENSE
    }
    spec.author       = { 'Advanced Human Imaging' => 'dev@advancedhumanimaging.com' }
    spec.swift_version = '5.0'
  
    spec.ios.deployment_target = '13.4'
  
    spec.source       = { 
      :http => "https://github.com/ahi-dev/OpenCV-SPM/releases/download/4.5.1/opencv2.xcframework.zip",
      :sha256 => "283d420f760584b903f71d765237473a2fe59d377d7a0b89bec3bd715c612a08"
    }
    
    spec.vendored_frameworks = 'opencv2.xcframework'
  
    spec.frameworks = [
      "Foundation",
      "Accelerate",
      "AssetsLibrary",
      "AVFoundation",
      "CoreGraphics",
      "CoreImage",
      "CoreMedia",
      "CoreVideo",
      "QuartzCore",
      "UIKit"
    ]

    spec.library = 'c++'
    spec.xcconfig = {
      'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
      'CLANG_CXX_LIBRARY' => 'libc++',
      'OTHER_LDFLAGS' => '-all_load'
    }
  end
  